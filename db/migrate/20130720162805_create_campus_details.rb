class CreateCampusDetails < ActiveRecord::Migration
  def change
    create_table :campus_details do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
