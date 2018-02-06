# 10.3.4 Proc.newとラムダの違い
# Proc.newの作成と実行
add_proc = Proc.new { |a, b| a + b }
p add_proc.call(10, 20)

# ラムダの作成と実行
add_lambda = ->(a, b) { a + b }
p add_lambda.call(10, 20) # => 30

puts "# ラムダはProc.newよりも引数のチェックが厳密になります。"
# Proc.newの場合(引数がnilでもエラーが起きないようにto_iメソッドを使う)
add_proc = Proc.new { |a, b| a.to_i + b.to_i }
# Proc.newは引数が1つまたは3つでも呼び出しが可能
p add_proc.call(10)
p add_proc.call(10, 20, 100)

# ラムダの場合
add_lambda = ->(a, b) { a.to_i + b.to_i }
# ラムダは個数について厳密なので、引数が2個ちょうどでなければエラーになる
p add_lambda.call(10)

p add_lambda.call(10, 20, 30)