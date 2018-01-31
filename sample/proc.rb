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