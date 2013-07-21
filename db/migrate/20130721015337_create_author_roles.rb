class CreateAuthorRoles < ActiveRecord::Migration
  def change
    create_table :author_roles do |t|
      t.string :role

      t.timestamps
    end
  end
end
