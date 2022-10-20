class User < ApplicationRecord
    enum user_type: {admin: 0, user: 1}
    has_secure_password
end
