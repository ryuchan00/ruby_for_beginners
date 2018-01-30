# 10.2.2 ブロックを引数として明示的に受け取る
def greeting(&block)
  puts 'おはよう'
  # callメソッドを使ってブロックを実行する
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end

greeting do |text|
  text * 2
end

# ブロックが渡されたかどうかは、その引数がnilかどうかで判断できます。
def greeting2(&block)
  puts 'おはよう'
  # プロックが渡されていなければblockはnil
  unless blcok.nil?
    text = block.call('こんにちは')
    puts text
  end
  puts 'こんばんは'
end

# ブロックなしで呼び出す
greeting2

# ブロック付きで呼び出す
greeting2 do |text|
  text * 2
end
# => おはよう
# こんにちはこんにちは
# こんばんは
