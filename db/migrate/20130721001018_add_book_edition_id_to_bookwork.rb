class AddBookEditionIdToBookwork < ActiveRecord::Migration
  def change
    add_column :bookworks, :book_edition_id, :string
  end
end
