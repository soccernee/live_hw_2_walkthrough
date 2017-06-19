class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user, except: [:new]


  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def authenticate_user
    if session.has_key?(:user_id)
      # do nothing
    else
      redirect_to new_session_path
    end
  end
end
