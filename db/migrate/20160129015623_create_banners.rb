class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :title, limit: 250
      t.string :description, limit: 500
      t.string :image_file_name
      t.string :image_content_type
      t.string :image_file_size

      t.timestamps null: false
    end
  end
end
