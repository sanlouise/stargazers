class CreateVideoPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :video_posts do |t|
    	t.integer :user_id
      t.string :video
      t.string :location
      t.string :description

      t.timestamps null: false
    end
  end
end
