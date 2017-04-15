require_relative "game"

describe HangMan do 
	let(:attempt) {HangMan.new}

	it "stores the correct word given on initialization" do
		expect(attempt)
	end

	it "checks letter given by user to see if it is included in correct word" do
		expect(attempt.check_letter()).include? (guess)
	end

end