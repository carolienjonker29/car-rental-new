class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.integer :size
      t.boolean :availability

      t.timestamps
    end
  end
end
