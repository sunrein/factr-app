class User < ActiveRecord::Base
  has_secure_password
  include BCrypt

  has_many :facts

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

end
