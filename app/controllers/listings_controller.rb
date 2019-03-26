class ListingsController < ApplicationController
before_action :set_listing, only: [:show, :edit, :update, :destroy]
<<<<<<< HEAD
# before_action :require_login
# skip_before_action :require_login, only: [:index]
=======
before_action :require_login
skip_before_action :require_login, only: [:index]
>>>>>>> 79c23ba6f0e786852e4d247ae0b4a1bc0ed0c197
#I added the before/skip/method information from the Login Required lab
#Can totally take out later, just wanted to implement whilst reading

  def index
    @listings = Listing.all
  end

  def show
    @user = User.find(Listing.find(params[:id]).user_id)
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

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit!
  end
end
