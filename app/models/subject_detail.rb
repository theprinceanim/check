class SubjectDetail < ActiveRecord::Base
	attr_accessor :term, :term_id
	belongs_to :term

	validates_presence_of :subject_code, :subject_name, :mark, :grade


end
