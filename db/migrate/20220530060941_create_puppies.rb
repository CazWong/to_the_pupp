class CreatePuppies < ActiveRecord::Migration[6.1]
  def change
    create_table :puppies do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :address
      t.string :breed
      t.text :description

      t.timestamps
    end
  end
end
