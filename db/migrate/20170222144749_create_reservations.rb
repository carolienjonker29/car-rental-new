class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.date :start_date
      t.date :end_date
      t.integer :number_of_persons
      t.integer :car_id

      t.timestamps
    end
  end
end
