class AddDayHoursToShifts < ActiveRecord::Migration
  def change
    add_column :shifts, :day_hours, :integer
  end
end
