# 8.5.1 includeされたモジュールの有無を確認する
module Loggable

end

class Product
  include Loggable
end

# クラスオブジェクトに大してinclude?メソッドを呼ぶと、引数で私たモジュールがincludeされているかどうかがわかります。
p Product.include?(Loggable)

p Product.included_modules # => [Loggable, Kernel]

p Product.ancestors

product = Product.new
# 引数が自クラス、includeしているモジュール、スーパークラスのいずれに該当すればtrue
p product.is_a?(Product)
p product.is_a?(Loggable)
p product.is_a?(Object)
