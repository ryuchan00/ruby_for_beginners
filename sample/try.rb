class Foo
  def foo
    p 'print: foo'
  end
end

def bar
  p 'print: bar'
end

obj = Foo.new

obj.foo() if obj

obj.try(obj.foo)
obj&.foo()
