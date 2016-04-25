class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  helper_method :current_budget

  # Dependencies:
  include DeviseTokenAuth::Concerns::SetUserByToken
  include CanCan::ControllerAdditions

  # Rescue from CanCanCan exception
  rescue_from CanCan::AccessDenied do |exception|
    # render json: exception.message, status: 500
    @error_message = exception.message
    render 'api/v1/errors/error', status: 500
  end

  # Returns only the most recent budget created by the user
  def current_budget
    Budget.where(user_id: current_user.id).sort_by(&:created_at).last
  end
end
