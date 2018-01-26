# 8.3.2 モジュールをextendする
module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  extend Loggable

  def title
    #logメソッドはLoggableモジュールで定義したメソッド
    log 'title is called.'
    'A great movie'
  end

  def self.create_products(names)
    log 'create_products'
  end
end


Product.create_products([])
Product.log('Hello.')
