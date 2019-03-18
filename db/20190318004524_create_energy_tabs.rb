class CreateEnergyTabs < ActiveRecord::Migration[5.2]
  def change
    create_table :energy_tabs do |t|
      t.integer :house_id
      t.integer :total
      t.integer :ammount, :default => 0
      t.timestamp
    end
  end
end
