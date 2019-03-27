class CartsController < ApplicationController
before_action :set_user, only: [:users_cart, :checkout]
before_action :set_cart, only: [:users_cart, :checkout, :clear_cart]

  def users_cart
    # listing_ids = cart.collect{|cart_item| cart_item.listing_id}
    # @listings = []
    # listing_ids.each do |listing_id|
    #   @listings << Listing.find(listing_id)
    # end
  end

  def checkout

  end

  def new
    cart = Cart.create(user_id: session[:user_id],listing_id: (flash[:listing]["id"]))
    if cart.valid?
      redirect_to listings_path
    else
      flash[:message] = "Listing not added. Already in cart"
      redirect_to listings_path
    end
  end

  def clear_cart
    @listings.each do |listing|
      Listing.delete(listing.id)
    end
    redirect_to listings_path
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_cart
    @cart = Cart.all.select{|cart| cart.user_id == session[:user_id]}
    listing_ids = @cart.collect{|cart_item| cart_item.listing_id}
    @listings = []
    listing_ids.each do |listing_id|
      @listings << Listing.find(listing_id)
    end
  end

end
