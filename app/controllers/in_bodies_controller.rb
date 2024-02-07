class InBodiesController < ApplicationController
  skip_before_action :authenticate_user!, unless: :skip_authentication?
  before_action :set_users, only: %i[new create]
  before_action :set_genres, only: %i[new create]
  before_action :set_in_body, only: %i[show edit update destroy]

  def index
    @in_bodies = InBody.all
  end

  def show
  end

  def new
    @in_body = InBody.new
  end

  def create
    @in_body = InBody.new(in_body_params)
    @in_body.nutritionist = current_nutritionist
    if @in_body.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @in_body.destroy
    redirect_to in_body_path
  end

  private

  def in_body_params
    params.require(:in_body).permit(:weight, :height, :age, :genre, :date, :body_water, :protein_mass, :minerals_mass, :body_fat, :lean_mass, :mass_free_of_fat, :muscle_mass, :imc, :percentage_body_fat, :right_arm, :left_arm, :trunk, :right_leg, :left_leg, :aec, :user_id)
  end

  def set_users
    @users = User.all
  end

  def set_genres
    @genres = ["Masculino", "Femenino", "Otro", "Prefiero no decirlo"]
  end

  def set_in_body
    @in_body = InBody.find(params[:id])
  end

  def skip_authentication?
    return current_user && true
  end
end
