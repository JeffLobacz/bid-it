class AddTotalHoursToShifts < ActiveRecord::Migration
  def change
    add_column :shifts, :total_hours, :integer
  end
end
