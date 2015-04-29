class Intrest < ActiveRecord::Base
	

	def self.search(query)
		where("intrest_name like ?", "%#{query}%") 
	end

end

