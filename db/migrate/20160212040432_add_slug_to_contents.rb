class AddSlugToContents < ActiveRecord::Migration
  def change
    add_column :contents, :slug, :string
  end
end
