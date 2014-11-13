class ChangePositionOfColumns < ActiveRecord::Migration
  def change
    change_column :students, :first_name, :string, :after => :last_name
  end
end
