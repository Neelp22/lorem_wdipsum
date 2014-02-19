class Lorem

	@words = ["Yaniv Savir", "Matthew Plummer", "Isaac Woodruff", "Brendan Soffientini", "Michael Deal", "Julie Kraft", "Eric Streske", "Jonathan Trope", "Daniel Bushkanets", "Nate Hindman", "Ethan Schmertzler", "Matthew Jacobs", "John Gordon", "Wright Rickman", "Evan Besser", "Brittany Wald", "Meghann Plunkett", "Omar Delarosa", "Neel Patel", "code", "GA", "WDI", "Studio 3", "ruby", "javascript", "postgres", "API", "When we get to Rails", "nec", "non", "sum", "oli", "sit", "per", "hum", "varchar the viking", "sexy sexy", "screen down music", "project week", "Little Insects", "onesie bathroom", "Faker gem", "karaoke", "The Factory", "Turger", "Lydia", "Rat Chaos", "Rat King"]

	def self.put_word
		word = @words.sample
	end

	def self.word(length)
		if length <= @words.length
			length.times do
				puts put_word
			end
		end
	end

	def self.paragraph(length)
		length.times do
			sentence = word(8)
			puts sentence
		end
	end

end