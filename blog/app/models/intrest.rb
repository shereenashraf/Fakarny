class Intrest < ActiveRecord::Base
	has_many :specifics

	def self.search(query)
		where("intrest_name like ?", "%#{query}%") 
	end

end

