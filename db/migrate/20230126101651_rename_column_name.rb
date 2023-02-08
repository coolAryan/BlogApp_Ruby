class RenameColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :description, :email
  end
end
