class House < ApplicationRecord
  has_many :users
  has_many :points_transactions
  has_many :energy_readings

  def end_day
    
  end

end
