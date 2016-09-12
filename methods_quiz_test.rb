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

  describe "closer_to" do

    it "returns 0 if they are the same amount from the target" do
      closer_to(12, 8, 16).must_equal(0)
    end

    it "returns the closer number" do
      closer_to(15, 14, 20).must_equal(14)
      closer_to(2, 17, 2).must_equal(2)
      closer_to(30, 35, 18).must_equal(35)
    end

  end

  describe "two_as_one?" do

    it "returns true if two add up to the other one" do
      two_as_one?(1, 2, 3).must_equal(true)
      two_as_one?(7, 10, 3).must_equal(true)
      two_as_one?(13, 7, 6).must_equal(true)
    end

    it "return false if two do not add up to the other one" do
      two_as_one?(237, 523, 213).must_equal(false)
    end

  end

  describe "pig_latinify" do

    it "talks in pig latin" do
      pig_latinify("the").must_equal("ethay")
      pig_latinify("old").must_equal("oldway")
      pig_latinify("dog").must_equal("ogday")
    end

  end

  describe "tutnese" do

    it "converts single words to tutnese" do
      tutnese("hello").must_equal("hashesqualulo")
    end

  end

end
