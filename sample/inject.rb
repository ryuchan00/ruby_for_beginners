numbers = [1, 2, 3, 4]
# resultは、初回のみに実行される。injectに与えた`0`が入る。
sum = numbers.inject(0) { |result, n| result + n }
p sum

result_str= ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'].inject('Sun') { |result, s| result + s }
p result_str