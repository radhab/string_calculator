require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe 'add' do
    it 'raises error if add method is not defined' do  
      expect { 
        StringCalculator.add("1,2")
      }.to raise_error(NoMethodError)
    end 

  end
end



