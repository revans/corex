require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "Date" do
  
  before(:all) do
    @today = Date.today
  end
  
  it "should return tomorrow" do
    Date.tomorrow.should == @today + 1
  end
  
  it "should return yesterday" do
    Date.yesterday.should == @today - 1
  end
  
  it "should return a date object" do
    "2009-12-25".to_date.is_a?(Date).should be_true
  end
  
  it "should return itself" do
    Date.to_date.should == Date
  end
  
  it "should return a week from today" do
    Date.week_from_today.should == @today + 7
  end
  
  it "should return a week from tomorrow" do
    Date.week_from_tomorrow.should == @today + 8
  end
  
  it "should covert a date to the proper Local Time value" do
    Date.today.to_time(:local).should eql( Time.local(::Time.now.year, ::Time.now.month, ::Time.now.day, 0,0,0) )
  end
  
  it "should return self if asked to format the data" do
    @today.format_date.should == @today
  end
  
end