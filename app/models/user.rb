class User < ActiveRecord::Base

  has_secure_password

  validates :first_name,        presence: true, uniqueness: true, length: { in: 3..20 }
  validates :last_name,         presence: true, uniqueness: true, length: { in: 3..20 }
  validates :email,             presence: true, uniqueness: true

  def admin?
    role == "admin"
  end

end
