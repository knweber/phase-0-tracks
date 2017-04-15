require_relative 'game'

describe HangMan do 
	let(:game1) {HangMan.new}

	answer = "halloween"

	it "converts correct word to string of dashes" do
		expect(answer.hyphenate).to eq "---------"
	end

	it "checks letter given by user to see if it is included in correct word" do
		attempt1 = "g"
		expect(attempt1.check_letter("g")).to eq false
		attempt2 = "l"
		expect(attempt2.check_letter("l")).to eq true
	end

end