class AddEnergyToHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :energy_cache, :integer, :default => 0
    add_column :houses, :cache_size, :integer, :default => 0
    add_column :houses, :average, :integer, :default => 0
  end
end
