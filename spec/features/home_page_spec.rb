require 'rails_helper'

describe "Home Page", js: true do
  it "opens home page" do
    visit '/'
    expect(page).to have_content 'Home'
  end
end
