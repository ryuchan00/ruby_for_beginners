# 7.6.5 superでスーパークラスのメソッドを呼び出す
require_relative '../sample/product'

class DVD < Product
  # nameとpriceはスーパークラスでattr_readerが設定されているので定数不要
  attr_reader :running_time

  def initialize(name, price, running_time)
    # スーパークラスのinitilizeメソッドを呼び出す
    super(name, price)
    @running_time = running_time
  end
end
dvd = DVD.new('A great movie', 1000, 120)
p dvd.name
p dvd.price
p dvd.running_time
