class CreateHabtmCountryGroup < ActiveRecord::Migration
  create_table :countries_groups, id: false do |t|
    t.integer :country_id, null: false
    t.integer :group_id, null: false
  end
end
