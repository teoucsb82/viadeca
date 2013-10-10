class AddNotesToRolls < ActiveRecord::Migration
  def change
    add_column :rolls, :notes_1814_1, :string
    add_column :rolls, :notes_1814_2, :string
    add_column :rolls, :notes_1814_3, :string
    add_column :rolls, :notes_1814_4, :string
    add_column :rolls, :notes_1814_5, :string
    add_column :rolls, :notes_1818_1, :string
    add_column :rolls, :notes_1818_A, :string
    add_column :rolls, :notes_1818_B, :string
    add_column :rolls, :notes_1818_C, :string
    add_column :rolls, :notes_1818_D, :string
    add_column :rolls, :notes_2462_A, :string
    add_column :rolls, :notes_2462_B, :string
    add_column :rolls, :notes_2462_C, :string
    add_column :rolls, :notes_1241_1, :string
    add_column :rolls, :notes_1241_2, :string
    add_column :rolls, :notes_1241_3, :string
    add_column :rolls, :notes_1241_4, :string
    add_column :rolls, :notes_1241_5, :string
    add_column :rolls, :notes_1241_6, :string
    add_column :rolls, :notes_1241_7, :string
    add_column :rolls, :notes_1241_8, :string
    add_column :rolls, :notes_1241_9, :string
    add_column :rolls, :notes_1723_1, :string
    add_column :rolls, :notes_1723_2, :string
    add_column :rolls, :notes_1723_3, :string
    add_column :rolls, :notes_1723_4, :string
    add_column :rolls, :notes_1723_5, :string
  end
end
