class AddCoordinatesToPuppy < ActiveRecord::Migration[6.1]
  def change
    add_column :puppies, :latitude, :float
    add_column :puppies, :longitude, :float
  end
end
