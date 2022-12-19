class RemoveBookIdUserIdFromReservations < ActiveRecord::Migration[7.0]
  def change
    remove_column :reservations, :book_id, :integer
    remove_column :reservations, :user_id, :integer
  end
end
