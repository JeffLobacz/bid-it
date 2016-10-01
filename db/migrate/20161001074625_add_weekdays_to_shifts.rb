class AddWeekdaysToShifts < ActiveRecord::Migration
  def change
    add_column :shifts, :mon_start_time, :time
    add_column :shifts, :mon_quit_time, :time
    add_column :shifts, :mon_location, :string
    add_column :shifts, :tue_start_time, :time
    add_column :shifts, :tue_quit_time, :time
    add_column :shifts, :tue_location, :string
    add_column :shifts, :wed_start_time, :time
    add_column :shifts, :wed_quit_time, :time
    add_column :shifts, :wed_location, :string
    add_column :shifts, :thu_start_time, :time
    add_column :shifts, :thu_quit_time, :time
    add_column :shifts, :thu_location, :string
    add_column :shifts, :fri_start_time, :time
    add_column :shifts, :fri_quit_time, :time
    add_column :shifts, :fri_location, :string
    add_column :shifts, :sat_start_time, :time
    add_column :shifts, :sat_quit_time, :time
    add_column :shifts, :sat_location, :string
  end
end
