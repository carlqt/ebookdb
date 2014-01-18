class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :user_id
      t.integer :book_id
      t.string :title
      t.integer :chapter
      t.integer :page

      t.timestamps
    end
  end
end
