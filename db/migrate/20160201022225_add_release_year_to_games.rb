class AddReleaseYearToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :release_year, :integer
  end
end
