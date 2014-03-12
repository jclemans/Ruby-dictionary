require 'rspec'
require 'term'

describe 'Term'
  describe 'initialize' do
    it 'initializes a Term with default properties' do
      new_term = Term.new('carrot', 'A delicious vegetable.')
      new_term.should be_an_instance_of Term
    end
  end
end
