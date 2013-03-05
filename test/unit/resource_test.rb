require 'test_helper'

describe Resource do

  before do
    @lecture  = FactoryGirl.create(:lecture)
    @resource = FactoryGirl.build :resource,
      :link => 'http://embryology.med.unsw.edu.au/pdf/Origin_of_Species.pdf',
      :name => 'The Origin Of Species'
    @resource.lecture = @lecture
  end

  it "should accept valid urls" do
    @resource.valid?.must_equal true
  end

  it "should not accept invalid urls" do
    @resource.link = 'invalid://urlss'
    @resource.valid?.must_equal false
  end

  it "should not allow urls longer than 200 chars" do
    @resource.link += "?q=" + Random.alphanumeric(size = 200)
    @resource.valid?.must_equal false
  end

  it "should not allow names longer than 200 chars" do
    @resource.name = Random.alphanumeric(size = 201)
    @resource.valid?.must_equal false
    @resource.name = Random.alphanumeric(size = 100)
    @resource.valid?.must_equal true
  end

  it "belongs to a lecture" do
    @resource.valid?.must_equal true
    @resource.lecture = nil
    @resource.valid?.must_equal false
  end
end
