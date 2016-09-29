class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.string :main_location
      t.string :detail_location
      t.integer :shift_number
      t.string :employment_status
      t.string :last_name
      t.string :first_name
      t.integer :employee_number
      t.string :days_off

      t.timestamps null: false
    end
  end
end
