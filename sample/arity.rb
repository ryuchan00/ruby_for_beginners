# arityメソッドを使うとブロック引数の個数を確認することができます。
def greeting(&block)
  puts 'おはよう'
  text =
      if block.arity == 1
        # ブロック引数が1個の場合
        yield 'こんにちは'
      elsif block.arity == 2
        # ブロック引数が2個の場合
        yield 'こんに', 'ちは'
      end
  puts text
  puts 'こんばんは'
end

# 1個のブロック引数でメソッドを呼び出す
greeting do |text|
  text * 2
end

# 2個のブロック引数でメソッドを呼び出す
greeting do |text_1, text_2|
  text_1 * 2 + text_2 * 2
end