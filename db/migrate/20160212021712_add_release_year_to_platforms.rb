class AddReleaseYearToPlatforms < ActiveRecord::Migration[5.2]
  def change
    add_column :platforms, :release_year, :year
  end
end
