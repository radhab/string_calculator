require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe 'add' do
    # it 'raises error if add method is not defined' do  
    #   expect { 
    #     StringCalculator.add("1,2")
    #   }.to raise_error(NoMethodError)
    # end

    it 'returns 0 when input string is empty' do
      expect(StringCalculator.add("")).to eq(0) 
    end

    it 'returns 0 when input string has only spaces' do
      expect(StringCalculator.add("      ")).to eq(0) 
    end

  end
end



