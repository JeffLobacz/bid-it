class CreateSundays < ActiveRecord::Migration
  def change
    create_table :sundays do |t|
      t.time :start_time
      t.time :quit_time
      t.string :location

      t.timestamps null: false
    end
  end
end
