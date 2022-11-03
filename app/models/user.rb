class User < ApplicationRecord
    
    enum user_type: {admin: 0, regular: 1}

    #password brcypt mechanism
    has_secure_password

    #validations
    validates :email,
     presence: true, 
     uniqueness: true
     
    validates :password, length: { in: 6..80 }
    validates :full_name, presence: true
   
   has_many :donations
  belongs_to :region
end
