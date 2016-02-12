class AddInformationsToPlatforms < ActiveRecord::Migration
  def change
    add_column :platforms, :processor, :string
    add_column :platforms, :amount_memory, :string
  end
end
