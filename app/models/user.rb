class User < ActiveRecord::Base
  # has_many :reviews
  has_secure_password

  validates :name, :alias, presence: true
  validates :password, length: {minimum: 8}, allow_nil: true


end
