class ListingsController < ApplicationController
before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def index

  end

  def show
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def cart_params
    params.require(:listing).permit(:title, :description, :user_id, :image_url, :)
  end
end
