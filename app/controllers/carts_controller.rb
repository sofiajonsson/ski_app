class CartsController < ApplicationController
before_action :set_user, only: [:users_cart, :checkout]
# before_action :set_cart, only: [:users_cart, :checkout, :clear_cart]

  def index
    @listings = Listing.all
  end
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
    listing = Listing.find(flash[:listing]["id"])
    cart = Cart.find_or_create_by(user_id: session[:user_id])
      cart.listings << listing #adding existing listing to carts list of listings
    if cart.valid?
      cart.save
      redirect_to listings_path
    else
      flash[:message] = "Listing not added. Already in cart"
      redirect_to listings_path
    end
  end

  def clear_cart
    @listings = Cart.find_by(user_id: session[:user_id]).listings
    @listings.each do |listing|
      Listing.delete(listing.id)
    end
    redirect_to listings_path
  end

  def show
    @user = User.find(session[:user_id])
    @cart= Cart.find_by(user_id: session[:user_id])
  end

  def edit

  end

  def update

  end

  def destroy
    if @cart = Cart.find_by(user_id: session[:user_id])
      @cart.delete
      session.clear
      redirect_to '/login'
    else
      flash[:message] = "Your cart is empty"
      redirect_to listings_path
    end
  end

  private

  def set_cart
    # @cart = Cart.all.select{|cart| cart.user_id == session[:user_id]}
    # listing_ids = @cart.collect{|cart_item| cart_item.listing_id}
    # @listings = []
    # listing_ids.each do |listing_id|
    #   @listings << Listing.find(listing_id)
    # end
  end

end
