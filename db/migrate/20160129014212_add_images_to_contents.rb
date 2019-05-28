class AddImagesToContents < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :image_file_name, :string
    add_column :contents, :image_content_type, :string
    add_column :contents, :image_file_size, :integer
  end
end
