class DonationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :donation_name, :description, :donation_amount, :region_id, :country_code

  belongs_to :user
  belongs_to :region
end
