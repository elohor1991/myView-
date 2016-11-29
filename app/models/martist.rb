class Martist <ActiveRecord::Base
  has_many :bookings
  has_many :photos
  validates :lastname, presence: true, length: {minimum: 2, maximum:20}
  validates :firstname, presence: true, length: {minimum: 2, maximum:20}
  validates :profilemessage, presence: true
#  mount_uploader :picture, PictureUploader
  
  
  
end