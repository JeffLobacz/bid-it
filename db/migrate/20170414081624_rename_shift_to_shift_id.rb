class RenameShiftToShiftId < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :shift, :shift_id
  end
end
