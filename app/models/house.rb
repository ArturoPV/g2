class House < ApplicationRecord
  has_many :users
  has_many :points_transactions

end
