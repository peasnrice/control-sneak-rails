class RenameOpenColumntoOpened < ActiveRecord::Migration[5.0]
  def change
    rename_column :gamewords, :open, :opened
  end
end
