class Page < ActiveRecord::Base

   validates :providername, presence: true,
                    length: { minimum: 5 }
                
 validates :providerinfo, presence: true,
                    length: { minimum: 10 }
                 mount_uploader :picture, PictureUploader

 
def self.search(query)
  where("providername like ?", "%#{query}%") 
end

end

