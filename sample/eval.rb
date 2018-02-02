# 文字列としてRubyのコードを記述する
code = '[1,2,3].map { |n| n + 10 }'

# evalメソッドに渡すと、文字列がRubyのコードとして実行される
p eval(code)

# バックククオートリテラルはバッククオートで囲まれた文字列をOSコマンドとして実行します。
puts `cat lib/fizz_buzz.rb`