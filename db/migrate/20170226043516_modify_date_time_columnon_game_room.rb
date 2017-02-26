class ModifyDateTimeColumnonGameRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :gamerooms, :time_end, :datetime
  end
end
