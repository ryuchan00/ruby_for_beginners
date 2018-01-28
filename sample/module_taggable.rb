# 8.5.2 include先のメソッドを使うモジュール
module Taggable
  def price_tag
    # priceメソッドはinclude先で定義されているはず、という前提
    # あえてselfをつけて呼び出してもよい(privateメソッドでなければ)
    # selfはinclude先のクラス(例えばProductクラス)のインスタンスになる
    "#{self.price}円"
  end
end

class Product
  include Taggable

  def price
    1000
  end
end

product = Product.new
puts product.price_tag # => "10000円"