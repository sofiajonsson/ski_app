class ApplicationController < ActionController::Base
helper_method :set_user
  private

  def set_user
    @user = User.find_by(id: session[:user_id])
  end

  def set_listing
  end
end
