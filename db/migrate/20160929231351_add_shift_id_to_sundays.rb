class AddShiftIdToSundays < ActiveRecord::Migration
  def change
    add_column :sundays, :shift_id, :integer
  end
end
