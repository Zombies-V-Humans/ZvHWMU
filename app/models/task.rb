class Task < ActiveRecord::Base; 
	validates_uniqueness_of :description
	validates :description, :presence => true

	def check_tagger_not_taggee
  		errors.add(:tagger, "You Can't Tag Yourself!") if description == tagger
	end
end
