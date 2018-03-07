class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :dish_name
      t.integer :restaurant_id
      t.datetime :time

      t.timestamps

    end
  end
end
