class AddDescriptionToPlatforms < ActiveRecord::Migration[5.2]
  def change
    add_column :platforms, :description, :text
  end
end
