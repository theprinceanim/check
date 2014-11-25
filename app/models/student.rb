class Student < ActiveRecord::Base
	attr_accessor :term, :term_id
	has_many :subject_details
	belongs_to :term

	
	validates_presence_of :exams_number, :first_name, :last_name, :username, :password
	validates_uniqueness_of :username, :exams_number
	validates_inclusion_of :exams_number,
						   :in => 1000000000..9999999999
	validates :exams_number, length:{is: 10}
	
end
						   
