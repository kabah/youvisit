class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :place_id
      t.integer :driver_id
      t.integer :admin_id
      t.datetime :depart_time
      t.datetime :return_time

      t.timestamps null: false
    end
  end
end
