class ChangeColumnNameAgain < ActiveRecord::Migration[5.0]
  def change
    rename_column :gamerooms, :host, :host_id
  end
end
