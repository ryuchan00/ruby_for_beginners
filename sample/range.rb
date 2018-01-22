# n 以上 m 以下、 n 以上 m 未満 の 判定 を する

# 不等号を使う場合
def liquid?(temperature)
  # 0度以上100度未満であれば液体　と判定したい
  0 <= temperature && temperature < 100
end
p liquid?(-1)
p liquid?(0)
p liquid?(99)
p liquid?(100)

# 範囲オブジォクトを使う場合
def liquid?(temperature)
  (0...100).include?(temperature)
end
p 'Use Range Object'
p liquid?(-1)
p liquid?(0)
p liquid?(99)
p liquid?(100)
