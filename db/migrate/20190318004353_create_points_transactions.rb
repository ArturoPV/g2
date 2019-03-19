class CreatePointsTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :points_transactions do |t|
      t.belongs_to :house
      t.integer :ammount
      t.timestamps
    end
  end
end
