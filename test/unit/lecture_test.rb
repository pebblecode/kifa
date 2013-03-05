require 'test_helper'

describe Lecture do
  before do
    @lecture = Lecture.new
    @user = FactoryGirl.create(:user)
  end

  it "should be invalid if the title is not provided" do
    @lecture.title = false
    @lecture.valid?.wont_equal true
  end

  it "should be invalid if the title is longer than 200 characters" do
    @lecture.title =  Random.alphanumeric(size = 201)
    @lecture.valid?.wont_equal true
  end

  it "should be valid if the title is present and less than 200 characters" do
    @lecture.title =  Random.alphanumeric(size = 199)
    @lecture.valid?.must_equal true
  end

  it "should be valid if the lecturer is present" do
    @lecture.title = Random.alphanumeric(size = 20)
    @lecture.lecturer = @user
    @lecture.valid?.must_equal true
  end

  it "should delegate #username to its lecturer" do
    @lecture.lecturer = @user
    @lecture.username.must_equal @user.username
  end
end

