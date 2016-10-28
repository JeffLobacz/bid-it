class DeleteEightHrRankToShifts < ActiveRecord::Migration
  def change
    remove_column :shifts, :eight_hr_rank, :integer
    remove_column :shifts, :ten_hr_rank, :integer
  end
end
