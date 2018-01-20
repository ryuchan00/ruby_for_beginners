def to_hex(r, g, b)
  # rjustは指定した桁数で左寄せするメソッド
  # 第二引数を指定すれば、その引数で不足文字文を埋めてくれる
  [r, g, b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex)
end