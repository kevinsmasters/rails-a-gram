class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in?

  def logged_in?
    !!current_user
  end

  def require_user
    if !user_signed_in?
      flash[:alert] = "you must be logged in to perform that action"
      redirect_to root_path
    end
  end
end
