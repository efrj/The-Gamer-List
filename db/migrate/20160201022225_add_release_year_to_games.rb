class AddReleaseYearToGames < ActiveRecord::Migration
  def change
    add_column :games, :release_year, :year
  end
end
