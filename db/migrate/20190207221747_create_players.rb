class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :position_id
      t.integer :games_played
      t.integer :game_minutes
      t.integer :points
      t.float :FG_percentage
      t.float :three_point_percentage
      t.float :FT_percentage
      t.text :img
      t.timestamps
    end
  end
end
