numbers = []
# 1から10まで2つ飛ばしで繰り返し処理を行う
(1..10).step(2) { |n| numbers << n}
p numbers # => [1,3,5,7,9]