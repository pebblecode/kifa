require 'test_helper'
 
describe Lecture do
  before do
    @lecture = Lecture.new
  end

  it "should be invalid if a name and link are not provided" do
    @lecture.valid?.wont_equal true
  end
end

