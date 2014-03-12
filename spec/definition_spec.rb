require 'rspec'
require 'definition'

describe 'Definition' do
  describe 'initialize' do
    it 'initializes a new Definition instance' do
      new_definition = Definition.new('A delicious vegetable', 'English')
      new_definition.should be_an_instance_of Definition
    end
    it 'sets the definition and the language based on passed-in information' do
      new_definition = Definition.new('A delicious vegetable', 'English')
      new_definition.definition.should eq 'A delicious vegetable'
      new_definition.language.should eq 'English'
    end
  end
end
