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

  def self.check_for_negatives!(numbers)
    negatives = numbers.select { |n| n < 0 }
    unless negatives.empty?
      raise "negative numbers not allowed: #{negatives.join(', ')}"
    end
  end
end


class StringCalculator
  def self.add(input)
    tokens = StringParser.parse(input)
    int_tokens = tokens.map(&:to_i)
    StringParser.check_for_negatives!(int_tokens)
    int_tokens.sum
  end
end

