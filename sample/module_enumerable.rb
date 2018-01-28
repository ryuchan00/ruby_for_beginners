p Array.include?(Enumerable)
p Hash.include?(Enumerable)
p Range.include?(Enumerable)

# 配列、ハッシュ、範囲でmapメソッドを使う
array = [1, 2, 3].map { |n| n * 10 }
hash = {a: 1, b: 2, c: 3}.map { |k, v| [k, v*10] }

p array
p hash

# 配列、ハッシュ、範囲でcountメソッドを使う
array = [1,2,3].count
hash = {a:1,b:2,c:3}.count
range = (1..3).count

p array
p hash
p range
