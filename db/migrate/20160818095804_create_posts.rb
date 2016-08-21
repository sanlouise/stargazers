class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
    	t.integer :astronomer_id
      t.integer :category_id
      t.string  :upload
      t.string  :city
      t.string  :country
      t.decimal :lat
      t.decimal :lon
      t.string  :description
      t.string  :equipment_used

      t.timestamps null: false
    end
  end
end
