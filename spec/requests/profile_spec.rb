require 'spec_helper'

describe "Profile" do
  before do
    visit "/"
    click_on "Sign up"
    fill_in "Email", :with => "bob@bob.com"
    fill_in "Password", :with => "foobar"
    fill_in "Password confirmation", :with => "foobar"
    click_button "Sign up"
  end

  it "should be able to be created by a user" do
    click_on "Edit profile"
    fill_in "bio", :with => "I'm just a normal guy"
    click_button "Save"
    page.should have_content("Profile saved successfully")
  end
end
