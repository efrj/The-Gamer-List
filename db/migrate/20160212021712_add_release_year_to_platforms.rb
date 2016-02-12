class AddReleaseYearToPlatforms < ActiveRecord::Migration
  def change
    add_column :platforms, :release_year, :year
  end
end
