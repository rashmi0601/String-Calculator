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
    end
  end