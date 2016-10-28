class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :employee_number, :integer
    add_column :users, :bid_time, :datetime
    add_column :users, :qualification, :string
  end
end
