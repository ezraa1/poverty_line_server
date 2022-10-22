class Region < ApplicationRecord
    has_many :users
    has_many :donations, through: :users
end
