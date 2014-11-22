class Term < ActiveRecord::Base
	has_many :subject_details

	validates :term, presence: true
end
