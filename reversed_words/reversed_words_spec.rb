# frozen_string_literal: true

# Complete the solution so that it reverses all of the words within the string passed in
# https://www.codewars.com/trainer/ruby

class String
  def reverse_words
    split.reverse.join(' ')
  end
end

RSpec.describe 'Reversed words' do
  describe '.reverse_words' do
    context 'one word' do
      it 'returns the word unchanged' do
        expect('hello'.reverse_words).to match(/hello/)
      end
    end

    context 'two words' do
      it 'reorders the order of words. First becomes last and vice versa' do
        expect('hello world'.reverse_words).to match(/world hello/)
      end
    end

    context 'a long sentence' do
      it 'reorders the order of all words' do
        sentence = 'The greatest victory is that which requires no battle'

        expect(sentence.reverse_words).to match(
          /battle no requires which that is victory greatest The/
        )
      end
    end
  end
end
