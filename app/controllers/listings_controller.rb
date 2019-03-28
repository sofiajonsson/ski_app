class ListingsController < ApplicationController
before_action :set_listing, only: [:show, :edit, :update, :destroy]


  def index
    @listings = Listing.all
  end

  def show
    flash[:user] = User.find(Listing.find(params[:id]).user_id)
    flash[:listing] = @listing
    comments = Comment.all.select{|comment| comment[:listing_id] == @listing[:id]}
    flash[:comments] = comments
    byebug
  end

  def new
    @listing = Listing.new()
  end

  def create

    @listing = Listing.new({title: params[:listing][:title], description: params[:listing][:description], user_id: session[:user_id], image_url: params[:listing][:image_url]})
    Photo.create(image_url: params[:listing][:image_url])
    if @listing.save
      redirect_to @listing
    else
      flash[:messages] = @listing.errors.full_messages
      redirect_to new_listing_path
    end
  end


  def edit
  end

  def update
    if @listing.update(listing_params)
      redirect_to @listing
    else
      redirect_to :edit
    end
  end

  def destroy

  end

  private

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end

end
