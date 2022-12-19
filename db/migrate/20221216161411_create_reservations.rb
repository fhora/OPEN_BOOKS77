class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :starting_date
      t.date :end_date
      t.integer :book_id
      t.integer :user_id
      t.string :status

      t.timestamps
    end
  end
end
