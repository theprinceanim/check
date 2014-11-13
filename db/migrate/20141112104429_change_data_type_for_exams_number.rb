class ChangeDataTypeForExamsNumber < ActiveRecord::Migration
    def self.up
    		change_table :students do |t|
      		t.change :exams_number, :integer
    		end
  	end
  
   	def self.down
    	change_table :students do |t|
      	t.change :exams_number, :string
     	end
  	end
  end

