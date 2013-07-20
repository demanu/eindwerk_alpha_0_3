class CreateBookEditions < ActiveRecord::Migration
  def change
    create_table :book_editions do |t|
      t.string :isbn_nr
      t.string :book_format_id
      t.string :bookwork_id
      t.string :publisher_id

      t.timestamps
    end
  end
end
