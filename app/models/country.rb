class Country < ActiveRecord::Base
  has_and_belongs_to_many :groups, join_table: :countries_groups
end
