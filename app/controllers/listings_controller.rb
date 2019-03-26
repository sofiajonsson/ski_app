class ListingsController < ApplicationController
# before_action :set_listing, only: [:show, :edit, :update, :destroy]
before_action :require_login
skip_before_action :require_login, only: [:index]
#I added the before/skip/method information from the Login Required lab
#Can totally take out later, just wanted to implement whilst reading


  def show
    @listing = Listing.find(params[:id])
  end

  def index
  end

  def create
    @listing = Listing.create(listing_id: user_id)
  end


  def edit

  end

  def update

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

  def cart_params
    params.require(:listing).permit(:title, :description, :user_id, :image_url, :)
  end
end
