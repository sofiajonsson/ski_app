class CommentsController < ApplicationController
before_action :set_user, only: [:create, :update]
	def index
		@comments = Comment.all
	end

	def new
		@comment=Comment.new
	end

	def create
		@comment = @user.comments.create(message: params[:message], listing_id: flash[:listing]["id"])
		if @comment.save
			redirect_to listing_path(@comment[:listing_id])
		else
			render :new
		end
	end

	def show
	end

	def edit
		@comment=Comment.find(params[:id])
	end

	def update
		@comment=Comment.find(paramsp[:id])
		if @comment.update(comment_params)
			redirect_to @comment
		else
			render :edit
		end
	end

	private

		# def comment_params
		# 	params.require(:comment).permit!
		# end
end
