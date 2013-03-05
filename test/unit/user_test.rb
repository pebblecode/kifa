require 'test_helper'
 
describe User do
  before do
    @user = User.new
  end

  it "should be invalid if the username is not provided" do
    @user.username = false
    @user.valid?.wont_equal true
  end

  it "should be invalid if the username is longer than 200 characters" do
    @user.username =  Random.alphanumeric(size = 201)
    @user.valid?.wont_equal true
  end

  it "should be valid if the username is present and less than 200 characters" do
    @user.username =  Random.alphanumeric(size = 199)
    @user.valid?.must_equal true
  end

end

