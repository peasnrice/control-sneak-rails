class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :gamerooms, :user_id, :host
  end
end
