class AddDatesToRolls < ActiveRecord::Migration
  def change
    add_column :rolls, :month, :integer
    add_column :rolls, :year, :integer
  end
end
