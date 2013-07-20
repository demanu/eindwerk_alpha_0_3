class AddBookstoreIdToBookwork < ActiveRecord::Migration
  def change
    add_column :bookworks, :bookstore_id, :string
  end
end
