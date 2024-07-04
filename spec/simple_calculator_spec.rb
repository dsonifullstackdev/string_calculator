# spec/simple_calculator_spec.rb
require 'rails_helper'

RSpec.describe SimpleCalculator, type: :service do
  describe ".add" do
    context "given an empty string" do
      it "returns 0" do
        expect(SimpleCalculator.add("")).to eql(0)
      end
    end

    context "given an nil" do
      it "returns 0" do
        expect(SimpleCalculator.add(nil)).to eql(0)
      end
    end

    context "given '1'" do
      it "returns 1" do
        expect(SimpleCalculator.add("1")).to eql(1)
      end
    end

    context "given '1,5'" do
      it "returns 6" do
        expect(SimpleCalculator.add("1,5")).to eql(6)
      end
    end

    context "given '1,2,3'" do
      it "returns 6" do
        expect(SimpleCalculator.add("1,2,3")).to eql(6)
      end
    end

    context "given '1\n2,3'" do
      it "returns 6" do
        expect(SimpleCalculator.add("1\n2,3")).to eql(6)
      end
    end

    context "given '//;\n1;2'" do
      it "returns 3" do
        expect(SimpleCalculator.add("//;\n1;2")).to eql(3)
      end
    end

    context "given a negative number" do
      it "raises an exception 'negative numbers not allowed'" do
        expect { SimpleCalculator.add("1,-2,3") }.to raise_error("negative numbers not allowed: -2")
      end
    end

    context "given multiple negative numbers" do
      it "raises an exception with all negative numbers" do
        expect { SimpleCalculator.add("1,-2,-3") }.to raise_error("negative numbers not allowed: -2,-3")
      end
    end

  end
end
