class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  before_filter :authenticate_user!

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
  end

  def is_admin_user
    if signed_in?
      unless current_user.admin?
        redirect_to root_path
      end
    else
      redirect_to root_path
    end
  end
end
