class AddInformationsToPlatforms < ActiveRecord::Migration[5.2]
  def change
    add_column :platforms, :processor, :string
    add_column :platforms, :amount_memory, :string
  end
end
