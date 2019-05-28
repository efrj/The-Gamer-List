class AddGenerationToPlatforms < ActiveRecord::Migration[5.2]
  def change
    add_reference :platforms, :generation, index: true, foreign_key: true
  end
end
