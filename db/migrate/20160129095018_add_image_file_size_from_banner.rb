class AddImageFileSizeFromBanner < ActiveRecord::Migration[5.2]
  def change
    add_column :banners, :image_file_size, :integer
  end
end
