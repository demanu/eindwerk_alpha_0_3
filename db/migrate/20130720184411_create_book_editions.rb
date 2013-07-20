class CreateBookEditions < ActiveRecord::Migration
  def change
    create_table :book_editions do |t|
      t.string :isbn_nr
      t.string :format
      t.string :bookwork_id
      t.string :publisher_id

      t.timestamps
    end
  end
end
