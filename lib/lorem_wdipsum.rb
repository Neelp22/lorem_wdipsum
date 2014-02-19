class Lorem

	@words = ["Yaniv Savir", "Matthew Plummer", "Isaac Woodruff", "Brendan Soffientini", "Michael Deal", "Julie Kraft", "Eric Streske", "Jonathan Trope", "Daniel Bushkanets", "Nate Hindman", "Ethan Schmertzler", "Matthew Jacobs", "John Gordon", "Wright Rickman", "Evan Besser", "Brittany Wald", "Meghann Plunkett", "Omar Delarosa", "Neel Patel", "code", "GA", "WDI", "Studio 3", "ruby", "javascript", "postgres", "API", "When we get to Rails", "nec", "non", "sum", "oli", "sit", "per", "hum", "varchar the viking", "sexy sexy", "screen down music", "project week", "Little Insects", "onesie bathroom", "Faker gem", "karaoke", "The Factory", "Turger", "Lydia", "Rat Chaos", "Rat King"]

	def self.put_word
		word = @words.sample
	end

	def self.word(length)
		new_array = []
		if length <= @words.length
			length.times do
				new_array.push("#{put_word}um")
			end
			return new_array.join(" ")
		else
			value = length / @words.length.round
			(2..value).each do |x|
				@words = @words + @words.shuffle!
			end
			length.times do
				new_array.push("#{put_word}um")
			end
			return new_array.join(" ")
		end
	end

	def self.paragraph(length)
		new_array = []
		length.times do
			5.times do
				sentence = word(8)
				new_array.push("#{sentence}" + ".")
			end
		end
		return new_array.join(" ")
	end

end