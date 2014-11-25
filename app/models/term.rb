class Term < ActiveRecord::Base
	# attr_accessor :name, :classroom_id
	

	has_many :students

	validates :term, presence: true
end
