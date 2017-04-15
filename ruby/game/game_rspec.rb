require_relative 'game'

describe HangMan do 
	let(:game1) { HangMan.new("halloween","g") }

	it "converts given word to string of dashes" do
		expect(game1.hyphenate).to eq "---------"
	end

	it "checks letter given by user to see if it is included in correct word" do
		expect(attempt.check_letter("g")).to eq false
	end

end