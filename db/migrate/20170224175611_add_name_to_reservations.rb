class AddNameToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :name, :string
  end
end
