class ListingsController < ApplicationController
before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def index
    @listings = Listing.all
  end

  def show
    # @user = User.find(params[:user][:id])
  end

  def new
    @listing = Listing.new()
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to @listing
    else
      render :new
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

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def cart_params
    params.require(:listing).permit!
  end
end
