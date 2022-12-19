class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :category
      t.string :photo
      t.string :description
      t.integer :delivery_price
      t.boolean :availability
      t.integer :user_id

      t.timestamps
    end
  end
end
