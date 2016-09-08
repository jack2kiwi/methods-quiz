require 'minitest/autorun'
require './methods_quiz'

# TODO - write tests here
describe "Methods" do

  describe "has_teen?" do

    it "returns true if one of the numbers is between 13 and 19" do
      has_teen?(12, 17, 23).must_equal(true)
    end

    it "returns true if one of the other numbers is between 13 and 19" do
      has_teen?(17, 12, 23).must_equal(true)
    end

    it "returns true if two of the numbers are between 13 and 19" do
      has_teen?(12, 17, 15).must_equal(true)
    end

    it "returns true if all of the numbers are between 13 and 19" do
      has_teen?(13, 17, 19).must_equal(true)
    end

    it "returns false if none of the numbers are between 13 and 19" do
      has_teen?(12, 71, 23).must_equal(false)
    end

  end

  describe "not_string" do

    it "does not change with a not in the beginning" do
      not_string("not true").must_equal("not true")
    end

    it "adds not to a string if it does not start with a not" do
      not_string("very true").must_equal("notvery true")
    end

  end

  describe "icy_hot?" do

    it "returns false if one is icy but other is not hot" do
      icy_hot?(-1, 30).must_equal(false)
    end

    it "returns false if one is hot but other is not icy" do
      icy_hot?(30, 304).must_equal(false)
    end

    it "returns false if neither is icy or hot" do
      icy_hot?(34, 30).must_equal(false)
    end

    it "returns false both are icy" do
      icy_hot?(-354, -23).must_equal(false)
    end

    it "returns false both are hot" do
      icy_hot?(126, 437).must_equal(false)
    end

    it "returns false if both are on the edge" do
      icy_hot?(0, 100).must_equal(false)
    end

    it "returns true if one is icy and the other is hot" do
      icy_hot?(-3, 107).must_equal(true)
      icy_hot?(101, -1).must_equal(true)
    end

  end

end
