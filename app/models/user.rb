class User < ApplicationRecord
  has_secure_password

  has_many :messages

  validates :password, length: {minimum: 6}, on: :update
end
