def echo command
	command
end

def shout command
	command.upcase
end
#
def repeat(command, times=1)
	order = " "
	#
	if times == 1
		order += command + " "
	end
	#
	while times > 0
		order += command + " "
		times-=1
	end
	order.strip
end
#
def start_of_word word, index
	letters = ''
	letters += word[0, index]
	letters
end
#
def first_word sentence
	firstWord = sentence.split(" ")
	firstWord[0]
end
#
def titleize sentence
	litteWords = ['over', 'and', 'or', 'in', 'the', 'for', 'is']
	newSentence = ''
	collection = sentence.split(' ')
	puts collection[0] = collection[0].capitalize
	for i in collection
		if !litteWords.include?(i)
			i.capitalize!
		end
		newSentence += i + ' '
	end
	newSentence.strip
end