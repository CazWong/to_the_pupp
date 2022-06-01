class AddCostPerNightToPuppies < ActiveRecord::Migration[6.1]
  def change
    add_column :puppies, :cost_per_night, :integer
  end
end
