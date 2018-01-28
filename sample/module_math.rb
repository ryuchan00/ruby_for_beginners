# モジュールの得意メソッドとしてsqrt(平方根)メソッドを利用する
Math.sqrt(2) # => 1.41421....

class Calculator
  include Math

  def calc_sqrt(n)
    # ミックスインとしてMathモジュールのsqrtメソッドを使う
    sqrt(n)
  end
end

calculator = Calculator.new
p calculator.calc_sqrt(2) # => 1.41421....

# Kernelモジュールの特異メソッドとしてputsやpをよびたす
Kernel.puts "Hello."
Kernel.p [1, 2, 3]