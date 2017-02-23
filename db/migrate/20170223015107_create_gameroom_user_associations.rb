class CreateGameroomUserAssociations < ActiveRecord::Migration[5.0]
  def change
    create_table :gameroom_user_associations do |t|
      t.belongs_to :gameroom, index: true
      t.belongs_to :user, index: true
    end
  end
end