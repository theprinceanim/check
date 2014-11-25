class Classroom < ActiveRecord::Base
	has_many :terms
	validates :name, presence: true
end
