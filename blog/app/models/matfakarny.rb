class Matfakarny < ActiveRecord::Base
 validates :title, presence: true,
                    length: { minimum: 2 }
                    
  has_many :votes, dependent: :destroy
end
