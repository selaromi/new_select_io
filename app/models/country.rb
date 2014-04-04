class Country < ActiveRecord::Base
  has_and_belongs_to_many :groups, join_table: :countries_groups
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      columns = %w(name capital)
      csv << columns
      all.each do |country|
        csv << country.attributes.values_at(*columns)
      end
    end
  end
end
