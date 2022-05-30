class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :puppy, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.text :comments
      t.integer :status

      t.timestamps
    end
  end
end
