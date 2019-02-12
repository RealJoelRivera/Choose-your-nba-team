class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :games_played, :game_minutes, :points, :FG_percentage, :three_point_percentage, :FT_percentage, :position_name, :img
end
