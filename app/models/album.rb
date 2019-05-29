class Album < ApplicationRecord
  belongs_to :user
  belongs_to :camera
  has_many :photos
end
