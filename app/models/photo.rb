class Photo < ApplicationRecord
  belongs_to :album
  belongs_to :camera
end
