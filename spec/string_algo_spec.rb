require 'spec_helper'

module Algos
  describe StringAlgo do
    let :algo do 
      StringAlgo.new
    end

    it "should return 0 for the same string" do
      a = 'abc'
      algo.levenshtein_distance(a, a).should == 0
    end

    it "should return the length of the non empty string" do
      a = 'abc'
      algo.levenshtein_distance(a, '').should == a.length
    end

    it "should return 1 for insertion" do
      a = 'abc'
      b = 'abcd'
      algo.levenshtein_distance(a, b).should == 1
    end

    it "should return 1 for insertion" do
      a = 'abc'
      b = 'bc'
      algo.levenshtein_distance(a, b).should == 1
    end

    it "should return 1 for modification" do
      a = 'abc'
      b = 'abd'
      algo.levenshtein_distance(a, b).should == 1
    end

    it "should return 1 for modification" do
      a = 'abc'
      b = 'adc'
      algo.levenshtein_distance(a, b).should == 1
    end

    it "should return 3 for totally different" do
      a = 'abc'
      b = 'def'
      algo.levenshtein_distance(a, b).should == 3
    end
  end
end
