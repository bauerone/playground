class CreateOwners < ActiveRecord::Migration[7.1]
  def change
    create_table :owners do |t|
      t.string :name,    null: false
      t.string :surname, null: false
      t.integer :age,    null: false

      t.timestamps
    end
  end
end
