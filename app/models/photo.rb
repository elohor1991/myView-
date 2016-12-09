class Photo < ActiveRecord::Base
  belongs_to :martist
  mount_uploader :picture, PictureUploader   
  validate :picture_size
  
  private 
    def picture_size
      if picture.size > 20.megabytes
        errors.add(:picture, "should be less than 20MB")
      end
    end
end
