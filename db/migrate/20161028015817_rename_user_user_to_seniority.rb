class RenameUserUserToSeniority < ActiveRecord::Migration
  def change
    rename_column :users, :user, :seniority
  end
end
