class User < ApplicationRecord
  validates :name, presence: true, length:{minimum: 6, maximum:40}
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX} 
  
  validates :password, presence: true, length: {minimum: 5}
end
