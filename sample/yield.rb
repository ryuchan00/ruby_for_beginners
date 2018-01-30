# 10.2.1 yieldを作ってブロックの処理を呼び出す
def greeting
  puts 'おはよう'
  # ここでブロックの処理を呼び出す
  (1..3).each do |i|
    yield
  end
  puts 'こんばんわ'
end

greeting do
  puts 'こんにちは'
end