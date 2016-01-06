class Puppy < ActiveRecord::Base
	has_many :suggestions
	validates :owner, presence:true
end
