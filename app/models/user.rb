class User < ActiveRecord::Base
  include BCrypt

  has_many :facts

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password)
    self.password == password
  end

end
