require "simon_says.rb"

describe "Simon says" do
	describe "echo" do 
		it "should echo hello" do 
			expect(echo("hello")).to eq("hello")
		end

		it "should echo bye" do 
			expect(echo("bye")).to eq("bye")
		end
	end
	# 
	describe "shout" do 
		it "should shout hello" do 
			expect(shout("hello")).to eq("HELLO")
		end
		#
		it "shoul shout multiplies words" do 
			expect(shout("hellow word")).to eq("HELLOW WORD")
		end
	end
	#
	describe "repeat" do 
		it "should repeat" do
			expect(repeat("hello")).to eq("hello hello")
		end
		it "should reapeat a number of time" do 
			expect(repeat("hello", 3)).to eq("hello hello hello")
		end
	end
	#
	describe "start_of_word" do 
		it "returns the first letter" do 
			expect(start_of_word("hello", 1)).to eq("h")
		end
		it "returns the first two letters" do 
			expect(start_of_word("Bob", 2)).to eq("Bo")
		end
		it "returns the first several letters" do 
			s = "abcdefg"
			expect(start_of_word(s, 1)).to eq("a")
			expect(start_of_word(s, 2)).to eq("ab")
			expect(start_of_word(s, 3)).to eq("abc")
		end
	end
	#
	describe "first_word" do 
		it "tell us the first wors of 'Hellow World' is 'Hello'" do 
			expect(first_word("Hello World")).to eq("Hello")
		end
		it "tell us the firs word of 'Oh dear' is 'oh'" do 
			expect(first_word("Oh dear")).to eq("Oh")
		end
	end

	describe "titleize" do 
		it "capitalize a word" do 
			expect(titleize("jaws")).to eq("Jaws")
		end
		it "capitalize a every word (in a title case)" do 
			expect(titleize("edmundo najera")).to eq("Edmundo Najera")
		end
		it "Dosent capitalize 'littele words' in a title" do 
			expect(titleize("war and pace")).to eq("War and Pace")
		end
		it "does capitalize 'little words' at the start of a title" do
      expect(titleize("the bridge over the river kwai")).to eq("The Bridge over the River Kwai")
    end
	end

end