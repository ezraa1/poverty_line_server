class RegionSerializer < ActiveModel::Serializer
  attributes :id, :sub_region, :sub_region_code, :country_name, :country_code, :city, :city_reporting_level

  has_many :users
  has_many :donations , through: :users
end
