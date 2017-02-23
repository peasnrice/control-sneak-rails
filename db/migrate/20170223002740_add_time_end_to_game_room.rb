class AddTimeEndToGameRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :gamerooms, :time_end, :DateTime
  end
end
