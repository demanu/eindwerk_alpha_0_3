class AddRoomAndCampusDetailToLibrary < ActiveRecord::Migration
  def change
    add_column :libraries, :room, :string
    add_column :libraries, :campus_detail_id, :string
  end
end
