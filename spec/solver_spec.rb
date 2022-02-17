require_relative '../solver'

describe Solver do
  solver = Solver.new
  describe "#factorial" do
    it 'should return the factorial of N' do
      expect(solver.factorial(5)).to eql 120
    end
  end
end
