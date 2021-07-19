class MathProblem

  # initialize instance to have to numbers with random integers between 1-20
  # and compute sum of the 2 numbers and store in answer instance variable
  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  # returns probelm statement
  def problem
    "What does #{@number1} plus #{@number2} equal?"
  end

  # checks if givne answer is correct
  def correct?(ans)
    @answer == ans
  end

end