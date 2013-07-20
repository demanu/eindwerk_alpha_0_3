class CreateBookstores < ActiveRecord::Migration
  def change
    create_table :bookstores do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
