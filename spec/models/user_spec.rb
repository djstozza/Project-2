describe User do
  it "has a valid factory" do
    User.create(:contact).should be_valid
  end

  it "is invalid without an email" do
  	Factory.build(:user, email: nil).should_not be_valid
  end

  it "is invalid with a duplicate email address" do
  	User.create(
  		name: { Faker::Name.first_name }
		surname: { Faker::Name.last_name }
		email: 'test@gmail.com'
		password: { Faker::Internet.password(8, 16) }
		address1: { Faker::Address.street_address }
		city: { Faker::Address.city }
		state: { Faker::Address.state }
		country: { Faker::Address.country_code }
  	)

  	user_new = User.new(
  		name: { Faker::Name.first_name }
		surname: { Faker::Name.last_name }
		email: 'test@gmail.com'
		password: { Faker::Internet.password(8, 16) }
		address1: { Faker::Address.street_address }
		city: { Faker::Address.city }
		state: { Faker::Address.state }
		country: { Faker::Address.country_code }
  	)
  	user.valid?
  	expect(user.errors[:email]).to include("Email has already been taken")
  end

  it "is invalid without a name" do
  	Factory.build(:user, name: nil).should_not be_valid
  end

  it "is invalid without a surname" do
  	Factory.build(:user, surname: nil).should_not be_valid
  end

  it "is invalid without an address" do
  	Factory.build(:user, address: nil).should_not be_valid
  end
end