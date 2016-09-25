class AddAttributesToSeniorities < ActiveRecord::Migration
  def change
    add_column :seniorities, :employee_number, :integer
    add_column :seniorities, :bid_time, :datetime
    add_column :seniorities, :qualification, :string
  end
end
