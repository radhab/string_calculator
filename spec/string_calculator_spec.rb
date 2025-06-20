require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe 'add' do
    # it 'raises error if add method is not defined' do  
    #   expect { 
    #     StringCalculator.add("1,2")
    #   }.to raise_error(NoMethodError)
    # end

    it 'returns 0 when input string is nil' do
      expect(StringCalculator.add(nil)).to eq(0) 
    end  

    it 'returns 0 when input string is empty' do
      expect(StringCalculator.add("")).to eq(0) 
    end

    it 'returns 0 when input string has only spaces' do
      expect(StringCalculator.add("      ")).to eq(0) 
    end

    it 'returns the number for a single input' do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it 'returns sum of two comma‑separated numbers' do
      expect(StringCalculator.add("1,2")).to eq(3)
    end

    it 'returns sum of any no of  comma‑separated numbers' do
      expect(StringCalculator.add("1,2,3,4")).to eq(10)
    end

    it 'handles newline as delimiter' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end


  end
end



