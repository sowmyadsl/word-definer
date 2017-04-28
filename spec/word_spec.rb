require('rspec')
require('word')
require('definition')

describe("#word") do
  it ("returns an inputted word") do
    test_word = Word.new({:word => "Activity"})
    expect(test_word.word).to(eq("Activity"))
    expect(test_word.id).to(eq(1))
  end

  describe('.all') do
    it ("is empty at the beginning") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it ("adds the inputted word to the array") do
      test_word = Word.new({:word => "Activity"})
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe(".clear") do
    it("clears out all the words in the array") do
      test_word = Word.new({:word=> "Activity"}).save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#add_definition") do
    it "adds a definition to the word" do
     test_word = Word.new({:word => 'Activity'})
     new_define = Definition.new({:definition => "the condition in which things are happening or being done."})
     new_define2 = Definition.new({:definition => "something else"})
     test_word.add_definition(new_define)
     test_word.add_definition(new_define2)
     expect(test_word.definitions[0]).to(eq(new_define))
     expect(test_word.definitions[1]).to(eq(new_define2))
    end
  end

  describe(".find") do
    it("finds the word and returns a word if it exists") do
      test_word = Word.new({:word => "Activity"})
      test_word.save()
      test_word2 = Word.new({:word => "Ruby"})
      test_word2.save()
      expect(Word.find(test_word.id())).to(eq(test_word))
    end
  end
end
