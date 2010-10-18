require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Fixnum do
  it "should respond to blank? method" do
    1.blank?.should be_false
  end
  
  it "should round to 2 decimal places" do
    1.round_to.should == 1.00
  end
end

describe Float do
  it "should respond to the blank? method" do
    1.0.blank?.should be_false
  end
  
  it "should convert to BigDecimal" do
    1.2345.to_bd.class.should == BigDecimal
  end
  
  it "should round to 2 decimal places" do
    1.23456.round_to.should == 1.23
  end
  
  it "should round to 3 decimal places" do
    1.234567.round_to(3).should == 1.235
  end
  
  it "should handle 1.second" do
    1.second.should == 1
  end
  
  it "should handle 1 minute" do
    1.minute.should == 60
  end
  
  it "should handle 1 hour" do
    1.hour.should == 3600
  end
  
  it "should handle 1 day" do
    1.day.should == 86400
  end
  
  it "should handle 1 week" do
    1.week.should == 604800
  end
  
  it "should handle 1 month" do
    1.month.should == 2592000
  end
  
  it "should handle 1.year" do
    1.year.should == 31471200.0
  end
end