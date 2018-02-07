# これは、チェリー本以外のコードだが、適当なリポジトリがないため、ここにコミットしておく
# クラスの引数を指定して入れる
class Foo
  def initialize(a: nil, b: "", c: 0)
    @b = b
    @c = c
  end
end

# a には代入されない
foo = Foo.new(b: "bar", c: 10)
p foo #<Foo:0x00007fad57024f70 @b="bar", @c=10>

class Foo2
  def initialize(a = nil, b = "", c = 0)
    @b = b
    @c = c
  end
end

# c には代入されない
foo = Foo2.new("bar", 10)
p foo #<Foo:0x00007fad57024f70 @b="bar", @c=10>

