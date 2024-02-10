class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.integer :brand,        null: false
      t.integer :engine,       null: false
      t.integer :transmission, null: false
      t.references :owner,     null: false, foreign_key: true

      t.timestamps
    end
  end
end
