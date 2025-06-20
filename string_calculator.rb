class StringCalculator
	def self.add(input) 
		return 0 if input.to_s.strip.empty?
		return input.to_i if input =~ /\A\d+\z/
		numbers = if input.start_with?('//')
  		m   = input.match(%r{//(.)\n(.*)})
  		delim   = Regexp.escape(m[1])  		
  		m[2].split(/#{delim}|,|\n/)
		else
			input.split(/,|\n/)
	  end
	  numbers.map(&:to_i).sum
  end		
end


