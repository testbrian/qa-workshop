require 'rails_helper'

describe "Signing Up", js: true do
  it "redirects to home page" do
    visit '/'
    click_on 'Sign up', match: :first
    fill_in 'Email', with: 'test@example.com'
    fill_in 'Password', with: 'password', match: :first
    fill_in 'Password confirmation', with: 'password'
    within('.form-actions') do
      click_button 'Sign up'
    end
    expect(page).to have_content 'Home'
  end

  it "validates password field" do
    visit '/'
    click_on 'Sign up', match: :first
    fill_in 'Email', with: 'test@example.com'
    fill_in 'Password', with: 'x', match: :first
    within('.form-actions') do
      click_button 'Sign up'
    end
    expect(page).to have_content 'Please review the problems'
    expect(page).to have_content 'is too short'
  end
end
