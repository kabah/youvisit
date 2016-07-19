class CreateTripPassengers < ActiveRecord::Migration
  def change
    create_table :trip_passengers do |t|
      t.references :trip, index: true, foreign_key: true
      t.integer :passenger_id

      t.timestamps null: false
    end
  end
end
