add_proc = Proc.new { |a, b| a + b }

# callメソッドを使う
add_proc.call(10, 20)
# yieldメソッドを使う
add_proc.(10, 20)
