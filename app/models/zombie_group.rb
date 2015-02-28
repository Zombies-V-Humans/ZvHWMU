class ZombieGroup < ActiveRecord::Base

	geocoded_by :address
	after_validation :geocode
		  validates :address, presence: true


  def self.authenticate(address)
    self.find_by_address(address)
    
  end
end
