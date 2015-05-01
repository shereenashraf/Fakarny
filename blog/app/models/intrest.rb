class Intrest < ActiveRecord::Base
has_many :user

	def self.search(query)
  where("intrest_name like ?", "%#{query}%") 
end


end

