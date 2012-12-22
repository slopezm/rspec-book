module Codebreaker
	class Game
		def initialize(output)
			@output = output
		end
		def start(secret)
			@secret = secret
			@output.puts "Welcome to Codebreaker!"
			@output.puts "Enter guess:"
		end

		def guess(guess)
			mark_plus = ''
			mark_minus = ''
			(0..3).each do |index|
				if exact_match?(guess,index)
					mark_plus << "+"
				elsif number_match?(guess,index)
					mark_minus << '-'
				end				
			end
			@output.puts mark_plus << mark_minus
		end

		def exact_match?(guess,index)
			guess[index] == @secret[index]
		end

		def number_match?(guess,index)
			@secret.include?(guess[index]) && !exact_match?(guess,index)
		end
	end
end