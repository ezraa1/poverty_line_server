class User < ApplicationRecord
    has_many :donations

    belongs_to :region
    
    enum user_type: {admin: 0, user: 1}
    has_secure_password
end
