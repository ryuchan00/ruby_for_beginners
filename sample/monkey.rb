# Stringクラスを継承した独自クラスを定義する
class MyString < String
  # Stringクラスを拡張するためのコードをかく
end
s = MyString.new('Hello')
p s # => "Hello"
p s.class #=> MyString
# Arrayクラスを継承した独自クラスを定義する
class MyArray < Array
  #Arrayクラスを拡張するためのコードをかく
end
a = MyArray.new()
a << 1
a << 2
p a #=> [1,2]
p a.class #=> MyArray
