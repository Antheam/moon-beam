class Camera < ApplicationRecord
  has_many :photos
  has_many :comments
  belongs_to :user

  def photo_count
    self.photos.length
  end
end
