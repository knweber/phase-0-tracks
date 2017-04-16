require_relative 'game'

describe HangMan do 
	let(:game1) { HangMan.new("halloween") }

	it "converts given word to string of dashes" do
		expect(game1.hyphenate).to eq "---------"
	end

	it "checks letter given by user to see if it is included in correct word" do
		expect(game1.check_letter("a")).to eq ["a"]
	end

	it "checks letter given by user to see if it is included in correct word" do
		expect(game1.check_letter("b")).to eq "Sorry! That letter is not in the word. Guess again!"
	end

	it "checks guess count to see if it's been incremented" do
		game1.check_letter("b")
		expect(game1.guess_count).to eq 1
	end

	it "checks guess count to see if it's been incremented" do
		game1.check_letter("h")
		expect(game1.guess_count).to eq 1
	end

	it "check letter given by user to see if it's already been given" do
		game1.check_letter("h")
		expect(game1.check_letter("h")).to eq "You already guessed that letter!"
	end

	it "checks guess count after a repeated guess to make sure it has NOT been incremented" do
		game1.check_letter("h")
		game1.check_letter("h")
		expect(game1.guess_count).to eq 1
	end

	it "fills in the dashed answer with the correct letters" do 
		expect(game1.add_letter(["h"])).to eq "h--------"
	end

end