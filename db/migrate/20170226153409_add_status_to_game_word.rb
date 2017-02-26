class AddStatusToGameWord < ActiveRecord::Migration[5.0]
  def change
    add_column :gamewords, :status, :integer
  end
end
