class About < ApplicationRecord

  validates :president, presence: true
  validates :vice_president, presence: true
  validates :treasure, presence: true
  belongs_to :user

end
