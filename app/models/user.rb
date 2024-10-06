class User < ApplicationRecord
    has_secure_password
  
    enum role: { receptionist: 0, doctor: 1 }
  
    validates :email, presence: true, uniqueness: true
  end
  