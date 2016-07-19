class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :address_one
      t.string :address_two
      t.string :city
      t.integer :zip
      t.string :phone
      t.integer :admin_id

      t.timestamps null: false
    end
  end
end
