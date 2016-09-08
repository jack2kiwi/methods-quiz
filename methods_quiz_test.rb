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
      has_teen?(12, 71, 23).must_equal(true)
    end

  end

end
