class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.date :booked_on

      t.timestamps
    end
  end
end
