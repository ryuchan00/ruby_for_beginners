require_relative '../sample/user_class'

alice = User.new('Alice', 'Ruby', 20)
bob = User.new('Bob', 'Python', 30)

# aliceとbobという2つのオブジェクトはfull_nameメソッドは持っているが、中身が違う

p alice.full_name
p bob.full_name

# オブジェクトのことをレシーバと呼ぶこともある。人に寄って呼び方が違うので、前後のコンテキストを理解すること
# レシーバの場合は`full_name`はメッセージとして捉える。
# レシーバとメッセージという呼び方は、Smalltalkというオブジェクト志向言語でよく使われる呼び方です。