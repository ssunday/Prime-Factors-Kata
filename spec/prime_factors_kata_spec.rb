require "prime_factors_kata"

describe PrimeFactorsKata do

  before do
    @prime_factors_kata = PrimeFactorsKata.new
  end

  describe "#calculate" do

    it "should return [2] for an input of 2" do
      prime = @prime_factors_kata.calculate(2)
      expect(prime).to eq [2]
    end

    it "returns [3] for an input of 3" do
      prime = @prime_factors_kata.calculate(3)
      expect(prime).to eq [3]
    end

    it "returns [2,2] for an input of 4" do
      prime = @prime_factors_kata.calculate(4)
      expect(prime).to eq [2,2]
    end

    it 'returns [2,2,2] for input of 8' do
      prime = @prime_factors_kata.calculate(8)

      expect(prime).to eq [2, 2, 2]
    end

    it "returns [3,3] for an input of 9" do
      prime = @prime_factors_kata.calculate(9)
      expect(prime).to eq [3,3]
    end

    it 'returns [2,7] for input of 14' do
      prime = @prime_factors_kata.calculate(14)
      expect(prime).to eq [2, 7]
    end

    it "returns [2,3,5,7] for an input of 210" do
      prime = @prime_factors_kata.calculate(210)
      expect(prime).to eq [2,3,5,7]
    end

    it 'returns [2, 2, 2, 3, 7] handle any number' do
      prime = @prime_factors_kata.calculate(168)

      expect(prime).to eq [2, 2, 2, 3, 7]
    end

    it 'should handle any number' do
      prime = @prime_factors_kata.calculate(330)

      expect(prime).to eq [2, 3, 5, 11]
    end
  end

end
