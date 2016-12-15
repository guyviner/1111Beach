class User < ApplicationRecord
  has_secure_password

  has_many :messages, dependent: :destroy

  validates :username, uniqueness: true
  validates :password, presence: true, length: {minimum: 6}, on: :update

  # def online?
  #   !Redis.new.get("user_#{self.id}_online").nil?
  # end

end
