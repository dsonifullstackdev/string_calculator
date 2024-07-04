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

  end
end
