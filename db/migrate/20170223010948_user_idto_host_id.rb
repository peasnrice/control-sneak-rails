class UserIdtoHostId < ActiveRecord::Migration[5.0]
  def change
    rename_column :gamerooms, :user_id, :host_id
  end
end
