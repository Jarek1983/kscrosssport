class Message < ApplicationRecord
  validates :name, presence: true, length: {minimum: 2}
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
end
