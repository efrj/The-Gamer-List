class AddImageFileSizeFromBanner < ActiveRecord::Migration
  def change
    add_column :banners, :image_file_size, :integer
  end
end
