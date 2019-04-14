class Player < ApplicationRecord

  validates :name, presence: true, length: {minimum: 3}
  validates :description, presence: true, length: {minimum: 15}
  # validates :achievement, presence: true, length: {minimum: 10}

  belongs_to :user
  mount_uploader :image, ImageUploader
end
