require 'spec_helper'
require_relative '../lib/string_calculator'


describe StringCalculator do
    describe '#add' do
      it 'returns 0 for an empty string' do
        expect(subject.add('')).to eq(0)
      end
  
      it 'returns the same number for a single number' do
        expect(subject.add('5')).to eq(5)
      end

      it 'returns the sum of two numbers' do
        expect(subject.add('5,2')).to eq(7)
      end

      it 'returns the sum of any numbers' do
        expect(subject.add('1,2,3,6')).to eq(12)
      end

      it 'returns sum when newlines between numbers are present' do
        expect(subject.add("1\n2\n3,4")).to eq(10)
      end

      it 'returns sum when custom delimiters are present' do
        expect(subject.add('//;\n1;2')).to eq(3)
      end

      it 'raises an exception for negative numbers' do
        expect { subject.add('-1,2') }.to raise_error(ArgumentError, "Negative numbers not allowed: -1")
      end

      it 'raises an exception for multiple negative numbers' do
        expect { subject.add('-1,2,-3') }.to raise_error(ArgumentError, "Negative numbers not allowed: -1, -3" )
      end
    end
  end