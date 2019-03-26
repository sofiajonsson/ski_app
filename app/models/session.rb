class SessionsController < ApplicationController
	belongs_to :user
	has_one :password
	#Session has not been seeded or migrated
	#controller, model, and view/new file have been created
	#user vs username--- should we use both?
  def create
    user = User.find_by(username: params[:username])
    authenticated = user.try(:authenticate, params[:password])
    return head(:forbidden) unless authenticated
    @user = user
    session[:user_id] = @user.id
  end
end
