# 10.3.5 Proc.newかラムダかを判断するlambda?メソッド
# Proc.newの場合
add_proc = Proc.new { |a, b| a + b }
p add_proc.class # => Proc
p add_proc.lambda? # => false

# ラムダの場合
add_lambda = ->(a, b) { a + b }
p add_lambda.class
p add_lambda.lambda?