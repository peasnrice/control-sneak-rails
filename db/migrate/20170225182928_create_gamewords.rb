class CreateGamewords < ActiveRecord::Migration[5.0]
  def change
    create_table :gamewords do |t|

      t.timestamps
    end
  end
end
