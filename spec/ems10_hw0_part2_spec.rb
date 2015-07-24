require 'spec_helper'

describe "#hello" do
  it "should be defined" do
    expect { hello("Testing") }.not_to raise_error()
    #expect { hello("Testing") }.not_to raise_error(::NoMethodError)
  end

  it "The hello method returns the correct string [30 points]" do
    hello("Dan").class.should == String
    hello("Dan").should eq('Hello, Dan')
    hello("BILL").should eq('Hello, BILL')
    hello("Mr. Ilson").should eq('Hello, Mr. Ilson')
  end
end

describe "#starts_with_consonant?" do
  it "should be defined" do
    #expect { starts_with_consonant?("d") }.not_to raise_error(::NoMethodError)
    expect { starts_with_consonant?("d") }.not_to raise_error()
  end
  it 'classifies true cases [10 points]' do
    starts_with_consonant?('v').should be true
    ['v', 'vest', 'Veeee', 'crypt'].each do |string|
      starts_with_consonant?(string).should be true
    end
  end
  it 'classifies false cases [10 points]' do
    starts_with_consonant?('a').should be false
    ['asdfgh', 'Unix'].each do |string|
        starts_with_consonant?(string).should be false
    end
  end
  it 'works on the empty string [5 points]' do
    starts_with_consonant?('').should be false
  end
  it 'works on nonletters [5 points]' do
    starts_with_consonant?('#foo').should be false
  end
end

describe "#binary_multiple_of_4?" do
  it "should be defined" do
    #expect { binary_multiple_of_4?("yes") }.not_to raise_error(::NoMethodError)
    expect { binary_multiple_of_4?("yes") }.not_to raise_error()
  end
  it "classifies valid binary numbers [30 points]" do
    ["1010101010100", "0101010101010100", "100", "0"].each do |string|
      binary_multiple_of_4?(string).should be true
    end
    ["101", "1000000000001"].each do |string|
      binary_multiple_of_4?(string).should_not be true
    end
  end
  it "rejects invalid binary numbers [10 points]" do
    binary_multiple_of_4?('a100').should be false
    binary_multiple_of_4?('').should be false
  end
end