class SubjectDetail < ActiveRecord::Base
	validates_presence_of :subject_code, :subject_name, :mark, :grade

end
