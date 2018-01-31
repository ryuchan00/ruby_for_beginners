def greeting(&block)
  puts 'おはよう'
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end

# Procオブジェクトを作成し、それをブロックの代わりとしてgreetingメソッドに渡す
repeat_proc = Proc.new { |text| text * 2 }
greeting(&repeat_proc)
# greeting(repeat_proc) # => ArgumentError: wrong number of arguments (given 1, expected 0)

puts '10.3.3 Procオブジェクトを普通の引数として渡す'
# ブロックではなく、1個のProcオブジェクトを引数として受け取る(&をつけない)
def greeting2(arrange_proc)
  puts 'おはよう'
  text = arrange_proc.call('こんばんは')
  puts text
  puts 'こんばんは'
end

# Procオブジェクトを普通の引数としてgreetingメソッドに渡す(&をつけない)
repeat_proc = Proc.new { |text| text * 2 }
greeting2(repeat_proc)

puts "# 3種類のProcオブジェクトを受け取り、それぞれの挨拶文字列に適応するgreeting3メソッド"
def greeting3(proc_1, proc_2, proc_3)
  puts proc_1.call('おはよう')
  puts proc_2.call('こんにちは')
  puts proc_3.call('こんばんは')
end

# greeting3メソッドに渡すProcオブジェクトを用意する
shuffle_proc = Proc.new { |text| text.chars.shuffle.join }
repeat_proc = Proc.new { |text| text * 2 }
question_proc = Proc.new { |text| "#{text}?" }

# 3種類のProcオブジェクトをgreeting3メソッドに渡す
greeting3(shuffle_proc, repeat_proc, question_proc)