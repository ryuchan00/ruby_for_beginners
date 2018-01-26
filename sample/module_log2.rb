# 8.3 モジュールのミックスイン
# モジュールをprivateにする
module Loggable

  private

  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  # 上で作ったモジュールをincludeする
  include Loggable

  def title
    #logメソッドはLoggableモジュールで定義したメソッド
    log 'title is called.'
    'A great movie'
  end
end

class User
  # こちらも同じ用にincludeする
  include Loggable

  def name
    # Loggableモジュールのメソッドが使える
    log 'name is called.'
    'alice'
  end
end

product = Product.new
p product.title
p product.log 'public?'

user = User.new
p user.name
