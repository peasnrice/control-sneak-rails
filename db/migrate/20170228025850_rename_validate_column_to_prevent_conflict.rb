class RenameValidateColumnToPreventConflict < ActiveRecord::Migration[5.0]
  def change
    rename_column :gameword_user_associations, :validate, :is_valid
  end
end
