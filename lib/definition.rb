class Definition
  attr_reader :definition, :language

  def initialize(new_definition, language)
    @definition = new_definition
    @language = language
  end
end
