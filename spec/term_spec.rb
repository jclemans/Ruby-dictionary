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
      new_term.edit_definition('A delicious fruit')
      new_term.definition.should eq 'A delicious fruit'
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
end
