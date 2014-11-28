class Term < ActiveRecord::Base
	# attr_accessor :name, :classroom_id
	
	belongs_to :classroom 
	has_many :students

	validates :term, presence: true
end
