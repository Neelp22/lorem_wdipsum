class Lorem

	@words = ["Yaniv Savir", "Matthew Plummer", "Isaac Woodruff", "Brendan Soffientini", "Michael Deal", "Julie Kraft", "Eric Streske", "Jonathan Trope", "Daniel Bushkanets", "Nate Hindman", "Ethan Schmertzler", "Matthew Jacobs", "John Gordon", "Wright Rickman", "Evan Besser", "Brittany Wald", "Meghann Plunkett", "Omar Delarosa", "Neel Patel", "code", "GA", "WDI", "Studio 3", "ruby", "javascript", "postgres", "API", "When we get to Rails", "nec", "non", "sum", "oli", "sit", "per", "hum", "varchar the viking", "sexy sexy", "screen down music", "project week", "Little Insects", "onesie bathroom", "Faker gem", "karaoke", "The Factory", "Turger", "Lydia", "Rat Chaos", "Rat King"]

	# Randomly selects a word from the @words array, then calls latinify_word
  def self.put_word
    word = @words.sample
    latinify_word(word)
  end

  # Removes the last three characters on the word and replaces them with 'ium'
  def self.latinify_word(word)
    return word[0..-3]+"ium"
  end

  # Returns the number of words from the @words array, as specified by the length input
  def self.word(length)
    word_array = []

    if length <= @words.length
      length.times do
        word_array << put_word
      end
    else
      @words.length.times do
        word_array << put_word
      end
    end

    sentence_grammar(word_array)

  end

  # Joins the input into a single string, then appends a period.
  def self.sentence_grammar(word_array)
    sentence = word_array.join(" ")
    sentence << (".")
    return sentence.capitalize
  end

	def self.paragraph(length)
		length.times do
			sentence = word(8)
			puts sentence
		end
	end

end