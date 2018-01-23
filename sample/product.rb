# 7.6.5 superでスーパークラスのメソッドを呼び出す
class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def foo(str)
    puts str
  end
end
product = Product.new('A great movie', 1000)
p product.name # => "A great movie"
p product.price # => 1000
