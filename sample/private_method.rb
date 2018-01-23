class Product
  private

  # これはprivateメソッド
  def name
    'A greate movie'
  end
end

class DVD < Product
  def to_s
    # nameはスーパークラスのprivateメソッド
    "name: #{name}"
  end
end

dvd = DVD.new
# 内部でスーパークラスのprivateメソッドを読んでいるがエラーにはならない
p dvd.to_s
