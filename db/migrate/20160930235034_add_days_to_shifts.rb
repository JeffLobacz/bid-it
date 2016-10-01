class AddDaysToShifts < ActiveRecord::Migration
  def change
    add_column :shifts, :sun_start_time, :time
    add_column :shifts, :sun_quit_time, :time
    add_column :shifts, :sun_location, :string
  end
end
