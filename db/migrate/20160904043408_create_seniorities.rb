class CreateSeniorities < ActiveRecord::Migration
  def change
    create_table :seniorities do |t|
      t.string :employment_status
      t.integer :bid_number
      t.string :first_name
      t.string :last_name
      t.date :seniority
      t.integer :shift

      t.timestamps null: false
    end
  end
end
