class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :lastname, :string
    add_column :users, :firstname, :string
    add_column :users, :role, :string
    add_attachment :users, :avatars
    add_attachment :users, :cvs
  end
end
