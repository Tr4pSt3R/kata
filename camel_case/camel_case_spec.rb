# frozen_string_literal: true

# Write simple .camelCase method for strings.
# All words must have their first letter capitalized without spaces.
#
# https://www.codewars.com/kata/587731fda577b3d1b0001196/train/ruby

class String
  def camelcase
    split(' ').map(&:capitalize).join
  end
end

RSpec.describe 'Camel case' do
  describe '#camelcase' do
    context 'one word' do
      it 'capitalises the first letter of the word' do
        expect('hello'.camelcase).to match(/Hello/)
      end
    end

    context 'two words' do
      it 'capitalises both words and removes spaces' do
        expect('hello world'.camelcase).to match(/HelloWorld/)
      end
    end

    context 'for a lenghty text' do
      it 'capitalises all words and removes all spaces' do
        expect('This is a long sentence'.camelcase).to match(/ThisIsALongSentence/)
      end
    end
  end
end
