class ChangeColumnNameOnce < ActiveRecord::Migration[5.0]
  def change
    rename_column :gamerooms, :host_id, :user_id
  end
end
