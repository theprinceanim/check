class Student < ActiveRecord::Base
	has_many :results
	validates_presence_of :exams_number, :first_name, :last_name, :username, :password
	validates_uniqueness_of :username, :exams_number
	validates_inclusion_of :exams_number,
						   :in => 1000000000..9999999999
	validates :exams_number, length:{is: 10}
	
end
						   
