require 'rspec'
require_relative '../app/calculator.rb'

describe 'calculating sum of digits' do
    it 'calculates for 59, 75' do
        expect(sum_digits([59, 75])).to eq(26)
    end

end