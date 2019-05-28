class CreatePlatforms < ActiveRecord::Migration[5.2]
  def change
    create_table :platforms do |t|
      t.string :name
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size

      t.timestamps null: false
    end
  end
end
