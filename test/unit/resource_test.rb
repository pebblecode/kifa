require 'test_helper'

describe Resource do

  before do
    @resource = FactoryGirl.build :resource,
      :link => 'http://embryology.med.unsw.edu.au/pdf/Origin_of_Species.pdf',
      :name => 'The Origin Of Species'
  end

  it "should accept valid urls" do
    @resource.valid?.must_equal true
  end

  it "should not accept invalid urls" do
    @resource.link = 'invalid://urlss'
    @resource.valid?.must_equal false
  end

  it "should not allow urls longer than 200 chars" do
    @resource.link += "?queryparam="
    200.times do
      @resource.link += "x"
    end
    @resource.valid?.must_equal false
  end

  it "should not allow names longer than 200 chars" do
    201.times do
      @resource.name += "X"
    end
    @resource.valid?.must_equal false
  end

end
