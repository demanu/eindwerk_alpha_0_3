class CreateBookFormats < ActiveRecord::Migration
  def change
    create_table :book_formats do |t|
      t.string :format

      t.timestamps
    end
  end
end
