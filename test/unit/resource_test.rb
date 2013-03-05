require 'test_helper'
 
describe Resource do
  before do
    @resource = Resource.new
  end

  it "should be invalid if a name and link are not provided" do
    @resource.valid?.wont_equal true
  end
end

