class User < ApplicationRecord
  has_many :comments
  has_many :cameras
  has_many :albums
  has_many :photos, through: :album
end
