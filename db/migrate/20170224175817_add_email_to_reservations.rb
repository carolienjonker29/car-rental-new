class AddEmailToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :email, :string
  end
end
