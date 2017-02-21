class AddUserIdToGameroom < ActiveRecord::Migration[5.0]
  def change
    add_column :gamerooms, :user_id, :integer
  end
end
