class Suggestion < ActiveRecord::Base
	belongs_to :puppy
	validates :name, presence:true
	validates :puppy, presence:true
end
