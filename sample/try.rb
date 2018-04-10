# 条件分岐で変数に代入 / &.演算子

# nil以外のオブジェクトであれば、a.upcaseと書いた場合と同じ結果になる
a = 'foo'
a&.upcase # => "FOO"
# nilであれば、nilを返す (a.upcaseと違ってエラーにはならない)
a = nil
a&.upcase # => nil

# 国名に応じて通貨を返す (該当する通貨がなければnil)
def find_currency(country)
  currencies = {japan: 'yen', us: 'dollar', indis: 'reppe'}
  currencies[country]
end

# 指定された国の通貨を大文字にして返す
def show_currency(country)
  currency = find_currency(country)
  # nilでないことをチェック (nilだとupcaseが呼び出せないため)
  # if currency
  #   currency.upcase
  # end

  # 条件分岐内で直接変数に代入してしまう (値が取得できれば真、できなければ偽)
  # if currency = find_currency(country)
  #   currency.upcase
  # end

  currency = find_currency(country)
  # currencyがnilの場合を考慮して、&.演算子でメソッドを呼び出す
  currency&.upcase
end

# 通貨が見つかる場合と見つからない場合の結果を確認
p show_currency(:japan) # => "YEN"
p show_currency(:brazil) # => nil

# 引数はメソッドが呼び出された場合のみ評価されます。
class Foo
  def foo(str = "foo")
    puts str
  end
end

# def foo(str = "foo")
#   puts str
# end

def bar
  'bar'
end

# barば実行される
obj = Foo.new
obj&.foo(bar)

# barは実行されない
obj = nil
obj&.foo(bar)
