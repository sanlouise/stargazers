class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :nationality
      t.string :bio
      t.string :image

      t.timestamps null: false
    end
  end
end