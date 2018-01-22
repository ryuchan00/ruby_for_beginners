# []で文字列の配列を作成する
p ['apple', 'melon', 'orange']

# %wで文字列を作成する(!で囲む場合)
p %w!apple melon orange!

# %Wで文字列の配列を作成する(丸括弧で囲む場合)
p %W(apple melon orange)

# 空白文字(スペースや改行)が連続した場合も1つの区切り文字と見なされる
p %w(
apple
melon
orange
  )

# スペースを含めたい場合
p %w(big\ apple small\ melon orange)

# 式展開や改行文字\n、タブ文字\tなどを含めたい場合は%Wを使います。
prefix = 'This is'
p %W(#{prefix}\ na \apple small\nmelon orange)