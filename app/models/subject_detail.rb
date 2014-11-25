class SubjectDetail < ActiveRecord::Base
	attr_accessor :student, :student_id
	belongs_to :student

	validates_presence_of :subject_code, :subject_name, :mark, :grade


end
