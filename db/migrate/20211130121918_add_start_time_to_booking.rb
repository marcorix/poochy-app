class AddStartTimeToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :start_time, :datetime
  end
end
