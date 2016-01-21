class User < ActiveRecord::Base

  has_secure_password

  #attr_accessor :password
  validates :first_name,        presence: true, uniqueness: true, length: { in: 3..20 }
  validates :last_name,         presence: true, uniqueness: true, length: { in: 3..20 }
  validates :email,             presence: true, uniqueness: true
  #validates :password,          confirmation: true # password_confirmation attr
  #validates_length_of :password, in: 6..20, on: :create

end
