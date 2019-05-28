class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      t.text :description
      t.references :genre, index: true, foreign_key: true
      t.references :softhouse, index: true, foreign_key: true
      t.references :platform, index: true, foreign_key: true
      t.string :video_url
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size

      t.timestamps null: false
    end
  end
end
