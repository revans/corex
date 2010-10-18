require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "Object Extensions" do
  it "should work with a string" do
    "".blank?.should be_true
  end
  
  it "should work with a filled in string" do
    "Something".blank?.should be_false
  end
  
  it "should work with an array" do
    [].blank?.should be_true
  end
  
  it "work with a filled array" do
    [1,2,3].blank?.should be_false
  end
  
  it "should work with a hash" do
    {}.blank?.should be_true
  end
  
  it "should work with a filled hash" do
    {:something => 'cool'}.blank?.should be_false
  end
  
  it "should work with NIL" do
    nil.blank?.should be_true
  end
  
  it "should work with fixnum" do
    1.blank?.should be_false
  end
  
  it "should work with floats" do
    1.23.blank?.should be_false
  end
end