class CreateEnergyTabs < ActiveRecord::Migration[5.2]
  def change
    create_table :energy_readings do |t|
      t.belongs_to :house
      t.integer :reading
      t.timestamp
    end
  end
end
