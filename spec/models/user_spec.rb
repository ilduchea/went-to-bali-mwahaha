require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_secure_password }
  it { should have_many :orders }
  # it { should validate_uniqueness_of :email }
  # it { should validate_confirmation_of :password }
  #
  # describe ".authenticate" do
  #   it "validates the signin process" do
  #     user = FactoryGirl.create(:user)
  #     expect(User.authenticate(user.email, user.password)).to eq(user)
  #   end
  # end
end
