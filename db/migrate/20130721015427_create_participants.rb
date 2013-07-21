class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :author_id
      t.string :author_role_id
      t.string :bookwork_id

      t.timestamps
    end
  end
end
