class AddMartistIdBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :martist_id, :integer
  end
end
