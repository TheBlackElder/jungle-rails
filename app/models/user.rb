class User < ApplicationRecord

  has_secure_password


  validates :first_name, :last_name, presence: true
  validates :password, presence: true, confirmation: true, length: { minimum: 4 } 
  validates :password_confirmation, presence: true
  validates :email, presence: true, :uniqueness => {:case_sensitive => false} 
 
  def self.authenticate_with_credentials(email, password)
    
    email = email.strip.downcase

    user = User.find_by_email(email)
   
   if user && user.authenticate(password)
     user
    end

  end

end
