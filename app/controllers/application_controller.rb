class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  http_basic_authenticate_with name: 'admin', password: 'admindata'
  def log_out
    reset_session
    @project = nil
  end
end