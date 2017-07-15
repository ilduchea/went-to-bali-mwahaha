require 'rails_helper'

describe "the sign up process" do
  user = FactoryGirl.create(:user)

  it "allows a user to sign in" do
    visit root_path
    click_link 'Sign in'
    fill_in 'email', with: user.email
    fill_in 'password', with: user.password
    click_button 'Sign in'
    expect(page).to have_content "You've signed in."
  end

  it "throws an error when a user tries to sign in incorrectly" do
    visit root_path
    click_link 'Sign in'
    click_button 'Sign in'
    expect(page).to have_content "There was a problem signing in. Please try again."
  end

end
