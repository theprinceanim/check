class AddUsernameAndPasswordToStudent < ActiveRecord::Migration
  def change
  	add_column :students, :username, :string
  	add_column :students, :password, :string
  end
end
