class ListingsController < ApplicationController
before_action :set_listing, only: [:show, :edit, :update, :destroy]

# before_action :require_login
# skip_before_action :require_login, only: [:index]


  def index
    @listings = Listing.all
  end

  def show
    flash[:user] = User.find(Listing.find(params[:id]).user_id)
    flash[:listing] = @listing
    comments = Comment.all.select{|comment| comment[:listing_id] == @listing[:id]}
    flash[:comments] = comments
    # @cart = Cart.create_or_find_by(@user.id)
  end

  def new
    @listing = Listing.new()
  end

  def create
    @listing = Listing.new({title: params[:listing][:title], description: params[:listing][:description],user_id: session[:user_id]})
    # @listing.user_id = user.id
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

end
