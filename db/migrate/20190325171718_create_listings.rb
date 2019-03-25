class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.integer :user_id
      t.string :title
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
