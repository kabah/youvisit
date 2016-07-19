class ChangeTripPassengerToTicket < ActiveRecord::Migration
  def change
    rename_table :trip_passengers, :tickets
  end
end
