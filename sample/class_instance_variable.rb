# 7.9.1 クラスインスタンス変数
# 1つはインスタンス変数の@name
# もう1つはクラスインスタンス変数の@name
# 見た目は同じだか、別変数扱い
class Product
  # クラスインスタンス変数
  @name = 'Product'

  def self.name
    # クラスインスタンス変数
    @name
  end

  def initialize(name)
    # インスタンス変数
    @name = name
  end

  def name
    # インスタンス変数
    @name
  end
end

# クラスインスタンス変数の出力
p Product.name

product = Product.new('Iron')
# インスタンス変数
p product.name
