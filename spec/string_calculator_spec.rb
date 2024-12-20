require 'spec_helper'
require_relative '../lib/string_calculator'


describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(subject.add('')).to eq(0)
    end
  end
end