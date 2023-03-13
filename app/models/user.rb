class User < ApplicationRecord

  has_secure_password


  validates :name, presence: true
  validates :password, presence: true, confirmation: true, length: { minimum: 4 } 
  validates :password_confirmation, presence: true
  validates :email, presence: true, :uniqueness => {:case_sensitive => false} 


end
