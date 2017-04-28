require('rspec')
require('word')
require('definition')

describe("#word") do
  it ("returns an inputted word") do
    test_word = Word.new({:word => "activity"})
    expect(test_word.word).to(eq("activity"))
    expect(test_word.id).to(eq(1))
  end

  it ("is empty at the beginning") do
    expect(Word.all()).to(eq([]))
  end
end
