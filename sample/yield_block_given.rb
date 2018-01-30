def greeting
  puts 'おはよう'
  # ブロックの有無を確認してからyieldを呼び出す
  if block_given?
    yield
  end
  puts 'こんばんは'
end

greeting
# => おはよう
# こんばんは

greeting do
  puts 'こんにちは'
end
# => おはよう
# こんにちは
# こんばんは

# 引数をブロックに渡し、ブロックの文字理知を受け取ってputsメソッドで出力するコード例です。
def greeting2
  puts 'おはよう'
  # ブロックに引数を渡し、戻り値を受け取る
  text = yield 'こんにちは'
  # ブロックの戻り値をコンソールに出力する
  puts text
  puts 'こんばんは'
end

greeting2 do |text|
  # yiledで渡された文字列("こんにちは")を2回繰り返す
  text * 2
end
# => おはよう
# こんにちはこんにちは
# こんばんは