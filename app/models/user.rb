class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true, length: { maximum: 255 }
  validates :email, presence: true, length: { maximum: 255 },
                    uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 3 }, allow_nil: true
end
