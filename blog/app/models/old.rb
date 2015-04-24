classt < ActiveRecord::Base
  has_many :questions     
   validates :body, presence: true
      
