class AddLibraryIdToBookwork < ActiveRecord::Migration
  def change
    add_column :bookworks, :library_id, :string
  end
end
