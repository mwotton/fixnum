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
  
  it 'should add 1 to something 32 bits long' do
    @m.add(2147483647).should == 2147483648
  end
  
  it 'should add 1 to something a bit bigger than 32 bits' do
    @m.add(2147483648).should == 2147483649
  end
  
end
