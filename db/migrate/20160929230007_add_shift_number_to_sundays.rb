class AddShiftNumberToSundays < ActiveRecord::Migration
  def change
    add_column :sundays, :shift_number, :integer
  end
end
