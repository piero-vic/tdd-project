class Solver
  def factorial(number)
    raise 'Negative number not accepted' if number.negative?
    return 1 if [0, 1].include?(number)

    number * factorial(number - 1)
  end

  def reverse(str)
    str.reverse
  end

  def fizzbuzz(n)
    return 'fizz' if n%3 == 0
  end
end
