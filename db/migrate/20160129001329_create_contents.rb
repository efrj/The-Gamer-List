class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string :title, limit: 250
      t.text :content

      t.timestamps null: false
    end
  end
end
