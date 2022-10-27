class User < ApplicationRecord
    has_many :donations
    # belongs_to :region
    
    enum user_type: {admin: 0, regular: 1}

    #password brcypt mechanism
    has_secure_password

    #validations
    validates :email,
     presence: true, 
     uniqueness: true
     
    validates :password, length: { in: 6..80 }
      # validates :age
    #  numericality: { only_integer: true }
   validates :full_name, presence: true
   #,  length: { minimum: 2 }
end
