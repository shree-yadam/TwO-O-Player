class MathProblem

  def initialize
    @number1 = nil
    @number2 = nil
    @answer = nil
  end

  def generate_new_problem
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  def problem
    byebug
    "What does #{@number1} plus #{@number2} equal?"
  end

  def correct?(ans)
    byebug
    @answer == ans
  end

end