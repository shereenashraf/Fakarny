class Page < ActiveRecord::Base
has_many :askprovider

        mount_uploader :picture, PictureUploader

 validates :providerinfo, presence: true,
                    length: { minimum: 10 }

                 


     

   validate  :picture_size

 
 # validates :providername, presence: true, uniqueness: true
#  validates :content, presence: true
 
  # It returns the articles whose titles contain one or more words that form the query
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("providername like ?", "%#{query}%") 
  end
         

            


  private

    # Validates the size of an uploaded picture.
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end

end
