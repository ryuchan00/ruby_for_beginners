module Loggable
  # 特異メソッドとしてメソッドを定義する
  def self.log(text)
    puts "[LOG] #{text}"
  end
end

# 他のクラスにミックスインしなくてもモジュール単体でそのメソッドを呼び出せる
Loggable.log('Hello.') # => [LOG] Hello.

module Loggable2
  class << self
    def log(text)
      puts "[LOG] #{text}"
    end

    # 以下、他の特異メソッドを定義
  end
end

Loggable2.log('Hello.') # => [LOG] Hello.
