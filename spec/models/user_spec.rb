# require 'spec_helper'
# describe User do
#   it "has a valid factory" do
#     FactoryGirl.create(:user).should be_valid
#   end

#   it "is invalid without an email" do
#   	FactoryGirl.build(:user, email: nil).should_not be_valid
#   end
  
#   # it "is invalid with a duplicate email address" do
#   # 	User.create(
#   # 		email: "dan@dan.com", name: "dan", surname: "sztolcman", password: "12345678", address: "14 Cecil Rd, Rose Bay, Sydney, AU"
#   # 	)
#   # 	user_1 = User.new(
#   # 		name: "Bruce",
#   # 		surname: "Wayne",
#   # 		password: "iambatman",
#   # 		email: "test@gmail.com",
#   # 		address: "Batcave, Gotham City, US"
#   # 	)
#   # 	user_1.valid?
#   # 	expect(user_1.errors[:email]).to eq("has already been taken")
#   # end

#   it "is invalid without a name" do
#   	FactoryGirl.build(:user, name: nil).should_not be_valid
#   end

#   it "is invalid without a surname" do
#   	FactoryGirl.build(:user, surname: nil).should_not be_valid
#   end

#   it "is invalid without an address" do
#   	FactoryGirl.build(:user, address: nil).should_not be_valid
#   end
# end