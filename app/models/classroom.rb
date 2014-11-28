class Classroom < ActiveRecord::Base
	has_many :terms
	validates_uniqueness_of :name
	validates :name, presence: true
end
