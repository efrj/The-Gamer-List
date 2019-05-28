class RemoveImageFileSizeFromBanner < ActiveRecord::Migration[5.2]
  def change
    remove_column :banners, :image_file_size, :string
  end
end
