class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  has_many :posts
  has_many :comments
end
