class AddFiledsToGameword < ActiveRecord::Migration[5.0]
  def change
    add_column :gamewords,  :phrase, :string
    add_column :gamewords,  :open, :boolean
    add_column :gamewords,  :recipient_id, :integer
    add_column :gamewords,  :sender_id, :integer
    add_column :gamewords,  :gameroom_id, :integer
  end
end
