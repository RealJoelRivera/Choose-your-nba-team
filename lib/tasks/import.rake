require 'csv'
require 'byebug'
namespace :import do

    desc "Import players from csv"
    task players: :environment do 
        filename = File.join Rails.root, 'db/csv/players.csv'

        CSV.foreach(filename,  headers: true) do |row|
  
            Player.create(name: row["name"], position: row["position"],games_played: row["games played"].to_i, game_minutes: row["game minutes"].to_i,points: row["points"].to_i, FG_percentage: row["FG Percentage"].to_f, three_point_percentage: row["three point percentage"].to_f, FT_percentage:row["FT Percentage"].to_f)
        end
    end
end