require 'rails_helper'

describe "the sign up process" do
  user = FactoryGirl.build(:user)

  it "allows a user to create an account" do
    visit root_path
    click_link 'Sign up'
    fill_in 'user[name]', with: user.name
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    fill_in 'user[password_confirmation]', with: user.password
    click_button 'Sign up'
    expect(page).to have_content "You've successfully signed up!"
  end

  it "throws an error when a user tries to create an account incorrectly" do
    visit root_path
    click_link 'Sign up'
    click_button 'Sign up'
    expect(page).to have_content "There was a problem signing up."
  end

end
