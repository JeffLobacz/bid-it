class AddCrewChiefToShifts < ActiveRecord::Migration
  def change
    add_column :shifts, :crew_chief, :string
  end
end
