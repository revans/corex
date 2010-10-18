require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "String Extensions" do

  it "should format a date string" do
    "2010-06-05 00:00:00 -0700".format_date.should == '2010-06-05'
  end
  
  it "should return true if the string is blank" do
    ''.blank?.should be_true
  end
  
  it "should return false if the string is not blank" do
    'hi'.blank?.should be_false
  end
  
  it "should return a formatted date" do
    "Wed Dec 09 18:13:33 -0800 2009".to_date.to_s.should  == "2009-12-09"
  end
end