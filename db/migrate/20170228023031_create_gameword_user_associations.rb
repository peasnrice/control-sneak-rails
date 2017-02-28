class CreateGamewordUserAssociations < ActiveRecord::Migration[5.0]
  def change
    create_table :gameword_user_associations do |t|
      t.integer :user_id
      t.integer :gameword_id
      t.boolean :validate
      t.boolean :favourite
      t.timestamps
    end
  end
end
