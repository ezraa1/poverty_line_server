class RegionSerializer < ActiveModel::Serializer
  attributes :id, :sub_region, :sub_region_code, :country_name, :country_code, :city, :city_reporting_level
end
