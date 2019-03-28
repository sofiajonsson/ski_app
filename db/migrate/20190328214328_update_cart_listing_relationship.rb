class UpdateCartListingRelationship < ActiveRecord::Migration[5.2]
  def change
    remove_column :carts, :listing_id
    add_column :listings, :cart_id, :integer
  end
end
