class Donation < ApplicationRecord
    belongs_to :user
    belongs_to :region

    validates :donation_amount, presence: true
end
