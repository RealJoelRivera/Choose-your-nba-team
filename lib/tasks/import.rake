require 'csv'
require 'byebug'
namespace :import do

    desc "Import players from csv"
    task players: :environment do 
        filename = File.join Rails.root, 'db/csv/players.csv'

        CSV.foreach(filename,  headers: true) do |row|
          byebug
            Player.create(name: row["name"], position: row["position"],games_played: row["games played"].to_i, game_minutes:row["game minutes"].to_i,points: row["points"].to_i, FG_percentage:row["FG percentage"].to_i, three_point_percentage: row["three point percentage"].to_i, FT_percentage:row["FT percentage"].to_i)
        end
    end
end
name	position	games played	game minutes	points	FG Percentage	three point percentage	FT Percentage