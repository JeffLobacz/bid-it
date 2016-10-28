class AddHrsPerDayPrefToShifts < ActiveRecord::Migration
  def change
    add_column :shifts, :hr_per_day_pref, :integer
  end
end
