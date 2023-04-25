require './lib/sub_strings'

describe SubString do
  describe '#sub_string' do
    it 'return in a hash the subStrings (simple example)' do
      str = SubString.new
      dictionary = %w[below down go going horn how howdy it i low own part partner sit]
      expect(str.sub_string('below', dictionary)).to eql({ 'below' => 1, 'low' => 1 })
    end

    it 'return in a hash the subStrings (difficult example)' do
      str = SubString.new
      dictionary = %w[below down go going horn how howdy it i low own part partner sit]
      expect(str.sub_string("Howdy partner, sit down! How's it going?", dictionary)).to eql( { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 })
    end
  end
end