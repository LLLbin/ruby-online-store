class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :profile])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :profile])
  end

  def admin_required
    if current_user.role != "admin"
      redirect_to"/", alert: "You are not admin!"
    end
  end
end
