# 9.6.2 ensureの代わりにブロックを使う
# ブロック付きでオープンすると、メソッドの実行後に自動的にクローズされる
File.open('some.txt', 'w') do |file|
  file << 'Hello'
  1 / 0
end
# 例外は発生するものの、openメソッドによってクローズ処理自体は必ず行われる
# => ZeroDivisionError: divided by 0
