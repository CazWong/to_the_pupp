class AddTotalCostToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :total_cost_per_night, :integer
  end
end
