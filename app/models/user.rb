class User < ApplicationRecord
  has_secure_password

  has_many :messages, dependent: :destroy

  validates :username, uniqueness: true
  validates :password, length: {minimum: 6}, on: :update
end
