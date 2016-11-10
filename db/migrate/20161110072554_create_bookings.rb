class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.datetime :booktime
      t.text :addedinfo
    end
  end
end
