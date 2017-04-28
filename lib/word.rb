class Word

  attr_reader(:word,:definitions,:id)
  @@words = []

  #initializes the instance variables word and definition array
  define_method(:initialize) do |attributes|
    @word = attributes[:word]
    @definitions = []
    @id = @@words.length + 1
  end

  #method to empty the array initially
  define_singleton_method(:all) do
    @@words
  end

  #method to save the inputted word into the array
  define_method(:save) do
    @@words.push(self)
  end

  #method to clear the words in the array
  define_singleton_method(:clear) do
    @@words = []
  end

  #method to add definition to each inputted word.
  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end

  #method to find the word by id.
  define_singleton_method(:find) do |id|
    found_word = nil
    @@words.each() do |word|
      if word.id().eql?(id)
        found_word = word
      end
    end
    found_word
  end
end
