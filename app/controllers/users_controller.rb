class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update, :destroy]
skip_before_action :authenticate_user, only: [:new, :create]

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		user = User.create(user_params)
	 if user.valid?
		 session[:user_id] = user.id
		 redirect_to listings_path
	 else
		 flash[:messages] = user.errors.full_messages
		 redirect_to new_user_path
	 end
	end

	def show
	end

	def edit
	end

	def update
		if @user.update(user_params)
				redirect_to @user
			else
				render :edit
			end
	end

	private

	def set_user
		@user = User.find(params[:id])
	end

	def user_params
	 params.require(:user).permit(:username, :password, :password_confirmation)
 end

end
