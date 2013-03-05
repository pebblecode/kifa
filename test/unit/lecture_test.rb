require 'test_helper'
 
describe Lecture do
  before do
    @lecture = Lecture.new
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

end

