require_relative '../solver'

describe Solver do
  solver = Solver.new
  describe '#factorial' do
    context '0 or 1 as argument' do
      it 'should return 1' do
        expect(solver.factorial(0)).to eql 1
        expect(solver.factorial(1)).to eql 1
      end
    end
    context 'negative number as argument' do
      it 'should raise and error' do
        expect { solver.factorial(-1) }.to raise_error('Negative number not accepted')
      end
    end
    context 'any other integer as argument' do
      it 'should return the factorial of the integer' do
        expect(solver.factorial(5)).to eql 120
        expect(solver.factorial(10)).to eql 3_628_800
      end
    end
  end

  describe '#reverse' do
    it 'Should return a reversed string' do
      expect(solver.reverse('hello')).to eql 'olleh'
      expect(solver.reverse('hello world')).to eql 'dlrow olleh'
    end
  end

  describe '#fizzbuzz' do
    context 'When input is divisible by 3' do
      it 'should return fizz' do
        expect(solver.fizzbuzz(3)).to eq 'fizz'
      end
    end
    context 'When input is divisible by 5' do
      it 'should return buzz' do
        expect(solver.fizzbuzz(25)).to eq 'buzz'
      end
    end
    context 'When input is divisible by both 3 and 5' do
      it 'should return fizzbuzz' do
        expect(solver.fizzbuzz(30)).to eq 'fizzbuzz'
      end
    end
    context 'When input is not divisible by both 3 or 5' do
      it 'should return the number' do
        expect(solver.fizzbuzz(7)).to eq '7'
      end
    end
  end
end
