class AddDescriptionToSofthouses < ActiveRecord::Migration[5.2]
  def change
    add_column :softhouses, :description, :text
  end
end
