require('rspec')
require('word')
require('definition')

describe(Definition) do
  describe("#definition") do
    it "returns the inputted definition" do
      test_definition = Definition.new({:definition => "An Activity is a condition in which things are happening or being done."})
      expect(test_definition.define).to(eq("An Activity is a condition in which things are happening or being done."))
    end
  end
end
