class Word
  attr_reader(:word,:definitions,:id)
  @@words = []

  define_method(:initialize) do |attributes|
    @word = attributes[:word]
    @definitions = []
    @id = @@words.length + 1
  end

  define_singleton_method(:all) do
    @@words
  end
end
