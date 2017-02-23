class AddPasswordToGameroom < ActiveRecord::Migration[5.0]
  def change
    add_column :gamerooms, :password, :string
  end
end
