class StringCalculator
	def self.add(input) 
		return 0 if input.to_s.strip.empty?
		return input.to_i if input =~ /\A\d+\z/
		parts = input.split(/,|\n/)
		return parts.map(&:to_i).sum if parts.size > 0
  end		
end