class AddHrsPerDayAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :eight_hr_per_day_rank, :integer
    add_column :users, :ten_hr_per_day_rank, :integer
  end
end
