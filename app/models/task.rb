class Task < ActiveRecord::Base; 
	  validates_uniqueness_of :description

validates :description, :presence => true


end
