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
end
