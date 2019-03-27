class CartsController < ApplicationController

  def show
  end

  def users_cart
    @user = User.find_by(id: session[:user_id])
    cart = Cart.all.select{|cart| cart.user_id == session[:user_id]}
    listing_ids = cart.collect{|cart_item| cart_item.listing_id}
    @listings = []
    listing_ids.each do |listing_id|
      @listings << Listing.find(listing_id)
    end
  end

  def checkout
    listing = Listing.find(flash[:listing]["id"])
    Listing.delete(listing.id)
  end

  def new
    Cart.create(user_id: session[:user_id],listing_id: (flash[:listing]["id"]))
    redirect_to listings_path
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

  def set_cart
    @cart = Cart.find(params[:id])
  end

  def cart_params
    params.require(:cart).permit(:listing_id, :user_id)
  end
end
