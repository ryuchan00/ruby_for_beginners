require 'set'

a = Set.new([1, 2, 3])
b = Set.new([3, 4, 5])
p (a | b)
p (a - b)
p (a & b)