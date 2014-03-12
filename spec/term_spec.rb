require 'rspec'
require 'term'

describe 'Term' do
  before do
    Term.clear
  end

  describe 'initialize' do
    it 'initializes a Term with default properties' do
      new_term = Term.new('carrot', 'A delicious vegetable.')
      new_term.should be_an_instance_of Term
    end
  end
  describe '.create' do
    it 'creates an instance of Term and pushes/saves it to an array of all terms' do
      new_term = Term.create('carrot', 'A delicious vegetable.')
      Term.all.should eq [new_term]
    end
  end

  describe 'edit_definition' do
    it 'allows definitions to be edited' do
      new_term = Term.create('plums', 'A delictions fruit')
      new_term.edit_definition('A delicious fruit',0)
      new_term.definitions[0].should eq 'A delicious fruit'
    end
  end

  describe '.clear' do
    it 'clears all Terms from the @@all_terms array' do
      Term.clear
      Term.all.should eq []
    end
  end

  describe 'delete' do
    it 'deletes a Term' do
      new_term = Term.create('bacon', 'The candy of meats')
      new_term2 = Term.create('apple', 'My favorite fruit')
      new_term.delete
      Term.all.should eq [new_term2]
    end
  end

  describe '.get_term' do
    it 'returns a term based on the index number selected' do
      new_term = Term.create('bacon', 'The candy of meats')
      new_term2 = Term.create('apple', 'My favorite fruit')
      Term.get_term(0).should eq new_term
    end
  end

  describe '.search' do
    it 'returns the word and definition that matches your search word' do
      new_term = Term.create('Waldo', 'An elusive striped shirt man')
      Term.search('Waldo').should eq new_term
    end
  end

  describe 'add_definition' do
    it 'adds a new definition to a term' do
      new_term = Term.create('velcro', 'a useful invention for small children')
      new_term.add_definition('a good name for a cat')
      new_term.definitions[1].should eq 'a good name for a cat'
    end
  end

  describe 'show_definitions' do
    it 'for an inputted word, it shows all definitions with index numbers' do
      new_term = Term.create('bobcat', 'a cat named Bob')
      new_term.add_definition('a piece of machinery')
      new_term.show_definitions.should eq "1. a cat named Bob\n2. a piece of machinery\n"
    end
  end
end
