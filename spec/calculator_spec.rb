require 'rspec'
require_relative '../app/calculator.rb'
require_relative '../app/point.rb'

describe 'figuring out if a point is "valid"' do
    it '(59, 75) is invalid' do
        expect(Point.new(59, 75).valid?).to be false
    end

    it '(-51, -7) is valid' do
        expect(Point.new(-51, -7).valid?).to be true
    end
end

describe 'calcualtion of valid area' do
    it 'calculates area for point (0,0)' do
        verifying_callback = ->(x) { raise "gotcha! #{x}" unless x.send(:sum_digits) < Point::MAGIC_NUMBER }
        expect(valid_area(Point.new(0,0), verifying_callback)).to eq(424129)
    end
end