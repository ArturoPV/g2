class AddDefaultName < ActiveRecord::Migration[5.2]
  change_column :houses, :name, :string, :default => "noname"
end
