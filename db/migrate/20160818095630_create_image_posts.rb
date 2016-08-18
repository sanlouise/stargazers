class CreateImagePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :image_posts do |t|
    	t.integer :user_id
      t.string :image
      t.string :location
      t.string :description

      t.timestamps null: false
    end
  end
end
