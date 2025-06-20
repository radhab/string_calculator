module StringParser
  def self.parse(input)
    return [] if input.to_s.strip.empty?   # [] instead of 0
		return [input.to_i]  if input.match?(/\A\d+\z/) # [n] instead of n
		numbers = if input.start_with?('//')
  		m   = input.match(%r{//(.)\n(.*)})
  		delim   = Regexp.escape(m[1])  		
  		m[2].split(/#{delim}|,|\n/)
		else
			input.split(/,|\n/)
	  end
	  numbers
  end
end


class StringCalculator
  def self.add(input)
    tokens = StringParser.parse(input)
    tokens.map(&:to_i).sum
  end
end

