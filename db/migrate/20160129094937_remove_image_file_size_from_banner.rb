class RemoveImageFileSizeFromBanner < ActiveRecord::Migration
  def change
    remove_column :banners, :image_file_size, :string
  end
end
