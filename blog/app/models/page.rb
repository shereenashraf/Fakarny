class Page < ActiveRecord::Base
        mount_uploader :picture, PictureUploader
        
   validates :providername, presence: true,
                    length: { minimum: 5 }
                
 validates :providerinfo, presence: true,
                    length: { minimum: 10 }
            
   validate  :picture_size

  private

    # Validates the size of an uploaded picture.
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
    end

