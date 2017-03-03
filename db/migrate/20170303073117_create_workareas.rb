class CreateWorkareas < ActiveRecord::Migration
  def change
    create_table :workareas do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
