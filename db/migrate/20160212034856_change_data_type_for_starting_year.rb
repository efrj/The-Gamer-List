class ChangeDataTypeForStartingYear < ActiveRecord::Migration[7.0]
  def up
    execute <<-SQL
      ALTER TABLE generations
      ALTER COLUMN starting_year
      TYPE integer
      USING EXTRACT(YEAR FROM starting_year)::integer;
    SQL
  end

  def down
    change_column :generations, :starting_year, :date
  end
end
