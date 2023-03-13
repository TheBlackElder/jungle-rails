require 'rails_helper'


RSpec.describe User, type: :model do
  before(:each) do 
    @user = User.create(name: "Elisabeth", email: "elisabeth@email.com", password: "easyEver", password_confirmation: "easyEver" )
  end

  describe 'Validations' do

    it "is valid with valid attributes" do
      expect(@user).to be_valid
    end


    it "is not valid without a name" do
      @user.name = nil
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages).to include("Name can't be blank")
    end

    it "is not valid, passwords do not match" do
      @user.password_confirmation = '1234'
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    
      
    it "has a valid password" do
      @user= User.new(name: "Elisabeth", email: 'elisabeth@email.com', password:"", password_confirmation: "")
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end

    it 'requires a password with at least 4 characters' do
      @user.password = 'eas'
      @user.password_confirmation = 'eas'
      expect(@user).not_to be_valid
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 4 characters)")
      
    end

  
    it "has a unique email" do
      @user1= User.create(name: 'Elisabeth', email: 'elisabethh@email.com', password:'easy', password_confirmation: 'easy')
      @user2= User.create(name: 'Elisabeth', email: 'ELISABETHH@EMAIL.COM', password:'easy', password_confirmation: 'easy')
      @user1.email = @user2.email
      expect(@user1).to be_valid
      expect(@user2.errors.full_messages).to include("Email has already been taken")
    end
  


 
  end

end





