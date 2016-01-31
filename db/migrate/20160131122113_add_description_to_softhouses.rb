class AddDescriptionToSofthouses < ActiveRecord::Migration
  def change
    add_column :softhouses, :description, :text
  end
end
