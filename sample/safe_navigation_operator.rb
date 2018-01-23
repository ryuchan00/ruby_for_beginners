class Safe
  def foo
    "foo"
  end
end



obj = Safe.new
obj_nil = nil
p obj&.foo
p obj_nil&.foo
