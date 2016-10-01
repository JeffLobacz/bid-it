class AddWatchedToShifts < ActiveRecord::Migration
  def change
    add_column :shifts, :watched, :boolean
  end
end
