class User < ApplicationRecord
  #validates :name, :email, :age, :password, presence: true
  validates :email, uniqueness: true
  has_secure_password validations: false
end
