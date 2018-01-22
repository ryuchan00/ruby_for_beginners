numbers = [1, 2, 3, 4, 5, 6]
# 偶数のみを集める
# エイリアスは、find_all
even_numbers = numbers.select { |n| n.even? }
p even_numbers

non_multiples_of_three = numbers.reject { |n| n % 3 == 0}
p non_multiples_of_three