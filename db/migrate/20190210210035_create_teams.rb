class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.integer :player_id
      t.integer :user_id

      t.timestamps
    end
  end
end
