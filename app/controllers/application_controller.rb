class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  private

  def check_if_admin
    unless current_user&.is_admin
      flash[:alert] = "У вас нет прав для выполнения этого действия."
      redirect_to root_path
    end
  end
end
