class AddUserIdToShifts < ActiveRecord::Migration[5.0]
  def change
    add_column :shifts, :user_id, :integer
    add_index :shifts, :user_id
  end
end
