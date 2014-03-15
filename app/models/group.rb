class Group < ActiveRecord::Base
  has_and_belongs_to_many :countries, join_table: :countries_groups
end