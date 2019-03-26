class CartsController < ApplicationController
before_action :set_cart, only: [:show, :edit, :update, :destroy]

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

  def set_cart
    @cart = Cart.find(params[:id])
  end

  def cart_params
    params.require(:cart).permit(:listing_id, :user_id)
  end
end
