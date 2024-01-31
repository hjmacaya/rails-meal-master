class ApplicationController < ActionController::Base
  before_action :authenticate_nutritionist!
  before_action :authenticate_user!
end
