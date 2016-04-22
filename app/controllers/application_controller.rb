class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  # Dependencies:
  include DeviseTokenAuth::Concerns::SetUserByToken
  include CanCan::ControllerAdditions

  # Rescue from CanCanCan exception
  rescue_from CanCan::AccessDenied do |exception|
    # render json: exception.message, status: 500
    @error_message = exception.message
    render 'api/v1/errors/error', status: 505
  end
end
