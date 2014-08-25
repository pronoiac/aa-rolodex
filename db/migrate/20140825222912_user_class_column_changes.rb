class UserClassColumnChanges < ActiveRecord::Migration
  def change
    remove_column :users, :email
    rename_column :users, :name, :username
    change_column :users, :username, :text, :null => false
    # add_column :users, :username, :string, :null => false, :default => "no username"
    
    add_index :users, :username, :unique => true
  end
end
