require File.dirname(__FILE__) + '/spec_helper'
require 'testnum'

describe "my_test" do
  it "should do nothing" do
    true.should == true
  end
  
  before :each do
    @m = MyTest.new
  end
  
  it 'should add something' do
    @m.add(1).should == 2
  end
  
  it 'should add something' do
    @m.add(100000000000).should == 100000000001
  end
  
end
