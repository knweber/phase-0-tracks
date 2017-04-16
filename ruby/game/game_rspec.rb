require_relative 'game'

describe HangMan do 
	let(:game1) { HangMan.new }

	it "converts given word to string of dashes" do
		expect(game1.hyphenate("halloween")).to eq "---------"
	end

	it "checks letter given by user to see if it is included in correct word" do
		expect(game1.check_letter("halloween", "a")).to eq ["a"]
	end

	it "fills in the dashed answer with the correct letters" do 
		expect(game1.add_letter(["a","h"],"halloween")).to eq "ha-------"
	end

end