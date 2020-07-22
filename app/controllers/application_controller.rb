class ApplicationController < ActionController::Base
protect_from_forgery with: :exception
http_basic_authenticate_with name: 'admin', password: 'admindata'

include Devise::Controllers::Helpers
include Pundit
#before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :current_user
  helper_method :logged_in?
rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized  
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

private

  def record_not_found
    render html: 'Record <strong>not found</strong>', status: 404
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:email, :password, :password_confirmation)
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def user_signed_in?
    !current_user.present?
  end

  def authorized
    redirect_to '/index' unless logged_in?
  end

  protected

  def after_sign_in_path_for(resource)
    current_user
  end

  def after_sign_out_path_for(resource_or_scope)
    request.referrer
  end

  def after_update_path_for(resource)
    sign_in_after_change_password? ? signed_in_root_path(resource) : new_session_path(resource_name)
  end

  def after_sign_up_path_for(resource)
    after_sign_in_path_for(resource) if is_navigational_format?
  end
end
