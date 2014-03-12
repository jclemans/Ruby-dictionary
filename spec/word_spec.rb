require 'rspec'
require 'word'

describe 'Word' do
  describe 'initialize' do
    it 'initializes a new instance of Word' do
      new_word = Word.new('carrot','English')
      new_word.should be_an_instance_of Word
    end
    it 'sets the word and language for the new word instance' do
      new_word = Word.new('carrot', 'English')
      new_word.word.should eq('carrot')
      new_word.language.should eq('English')
    end
  end
end
