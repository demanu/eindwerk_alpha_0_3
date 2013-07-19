class CreateBookworks < ActiveRecord::Migration
  def change
    create_table :bookworks do |t|
      t.string :title

      t.timestamps
    end
  end
end
