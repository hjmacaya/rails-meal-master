class PagesController < ApplicationController
  skip_before_action :authenticate_nutritionist!, only: %i[home sign_in user_home]
  skip_before_action :authenticate_user!, only: %i[home sign_in]

  def home
  end

  def sign_in
  end

  def user_home
    @user = current_user
  end
end
