class User < ApplicationRecord
  validates :name, :email, :age, :password, presence: true
  validates :email, uniqueness: true
end
