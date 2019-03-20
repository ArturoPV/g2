class CreateEnergyTabs < ActiveRecord::Migration[5.2]
  def change
    create_table :energy_tabs do |t|
      t.belongs_to :house
      t.integer :total
      t.integer :ammount, :default => 0
      t.timestamp
    end
    create_table :energy_transactions do |t|
      t.belongs_to :energy_tab
      t.integer :reading
      t.timestamp
    end
  end
end
