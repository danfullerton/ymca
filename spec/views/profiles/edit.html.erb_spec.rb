require 'spec_helper'

describe "profiles/edit" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :name => "MyString",
      :bio => "MyText",
      :bmi => "MyString",
      :ymca_name => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => profiles_path(@profile), :method => "post" do
      assert_select "input#profile_name", :name => "profile[name]"
      assert_select "textarea#profile_bio", :name => "profile[bio]"
      assert_select "input#profile_bmi", :name => "profile[bmi]"
      assert_select "input#profile_ymca_name", :name => "profile[ymca_name]"
      assert_select "input#profile_user_id", :name => "profile[user_id]"
    end
  end
end
