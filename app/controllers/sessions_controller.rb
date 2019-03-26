class SessionsController < ApplicationController

    def new
    end

    def create
      if User.find_by(user_name: params[:user_name])
        user = User.find_by(user_name: params[:user_name])
        session[:user_id] = user.id
      else
        flash[:message] = "User not found"
        redirect_to "/login"
      end
    end

    def destroy
      session.delete :username
    end
end
