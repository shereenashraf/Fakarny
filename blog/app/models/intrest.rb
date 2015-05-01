class Intrest < ActiveRecord::Base
<<<<<<< HEAD
	has_many :specifics
=======
has_many :user
>>>>>>> 44a3698073c1f0da97dac3d64c5bb24ac51d52c0

	def self.search(query)
		where("intrest_name like ?", "%#{query}%") 
	end


end

