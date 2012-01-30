require 'spec_helper'

describe "Home page" do
  it "should say welcome" do
    visit "/"
    page.should have_content("Welcome to the YMCA")
  end
end
