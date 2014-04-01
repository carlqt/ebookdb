require 'spec_helper'

describe "authentication", :type => :feature do
  before :each do
    @user = FactoryGirl.create(:user)
    # @user = User.find(1)
  end


  it "should login the user" do
    visit 'http://localhost:3000/users/sign_in'

    fill_in 'Username', :with => @user.username
    fill_in 'Password', :with => @user.password

    click_on 'Sign in'
    expect(page).to have_content "Signed in"
    
  end

end
