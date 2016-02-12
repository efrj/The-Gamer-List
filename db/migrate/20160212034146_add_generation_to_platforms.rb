class AddGenerationToPlatforms < ActiveRecord::Migration
  def change
    add_reference :platforms, :generation, index: true, foreign_key: true
  end
end
