require 'csv'
require 'byebug'
namespace :import do

    desc "Import players from csv"
    task players: :environment do 
        filename = File.join Rails.root, 'db/csv/players.csv'

        CSV.foreach(filename,  headers: true) do |row|
            Player.create(name: row["name"], position:row["position"],games_played: row["games_played"].to_i, game_minutes:row["game_minutes"].to_i,points: row["points"].to_i, FG_percentage:row["FG_percentage"].to_i, three_point_percentage: row["three_point_percentage"].to_i, FT_percentage:row["FT_percentage"].to_i)
        end
    end
end

    