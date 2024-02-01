class InBodiesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index new show create]

  def index
    @in_bodies = InBody.all
  end

  def show
  end

  def new
    @in_body = InBody.new
    @users = User.all
  end

  def create
    @in_body = InBody.new(in_body_params)
    @in_body.nutritionist = current_nutritionist
    @in_body.save
    current_user ? redirect_to(user_home_path) : redirect_to(root_path)
  end

  private

  def in_body_params
    params.require(:in_body).permit(:weight, :height, :age, :genre, :date, :body_water, :protein_mass, :minerals_mass, :body_fat, :lean_mass, :mass_free_of_fat, :muscle_mass, :imc, :percentage_body_fat, :right_arm, :left_arm, :trunk, :right_leg, :left_leg, :aec, :user_id)
  end
end
