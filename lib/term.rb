class Term
  attr_reader :term, :definition
  @@all_terms = []

  def Term.clear
    @@all_terms = []
  end

  def Term.all
    @@all_terms
  end

  def initialize(term, definition)
    @term = term
    @definition = definition
  end

  def Term.create(term, definition)
    new_term = Term.new(term, definition)
    @@all_terms << new_term
    new_term
  end

  def edit_definition(new_definition)
    @definition = new_definition
  end

  def delete
    @@all_terms.delete_if {|term| term == self}
  end
end
