class AddSecondUserIdToUserRaitingsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :user_ratings, :poster_id, :integer
  end
end
