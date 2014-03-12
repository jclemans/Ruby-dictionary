class Term
  attr_reader :word, :definitions
  @@all_terms = []

  def Term.clear
    @@all_terms = []
  end

  def Term.all
    @@all_terms
  end

  def initialize(word, definition)
    @word = word
    @definitions = []
    @definitions << definition
  end

  def Term.create(word, definition)
    new_term = Term.new(word, definition)
    @@all_terms << new_term
    new_term
  end

  def edit_definition(new_definition,index)
    @definitions[index] = new_definition
  end

  def add_definition(new_definition)
    @definitions << new_definition
  end

  def delete
    @@all_terms.delete_if {|term| term == self}
  end

  def Term.list_words
    @@all_terms.each_with_index do |term, index|
      puts "#{index + 1} #{term.word}"
    end
  end

  def Term.get_term(index)
    @@all_terms[index]
  end

  def Term.search(input_word)
    @@all_terms.each do |term|
      if term.word.downcase == input_word.downcase
        return term
      end
    end
  end

  def show_definitions
    definitions_string = ""
    @definitions.each_with_index do |a_definition, index|
      definitions_string += "\t#{index + 1}. #{a_definition}\n"
    end
    definitions_string
  end
end

new_term = Term.create('bobcat', 'a cat named Bob')
new_term.add_definition('a piece of machinery')
