class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.references :dog, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :confirmed

      t.timestamps
    end
  end
end
