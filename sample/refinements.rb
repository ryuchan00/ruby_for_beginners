module StringShuffle
  # refinementsが目的なので、refineメソッドを使う
  refine String do
    # Stringクラスに対する変更
    def shuffle
      chars.shuffle.join
    end
  end

  refine Object do
    # Objectクラスに対する変更
  end

  refine Integer do
    def shuffle
      puts "Integer Shuffle"
      self
    end
  end
end

class User
  #refinementsを有効化する
  using StringShuffle

  def initialize(name)
    @name = name
  end

  def shuffled_name
    # Userクラスの内部であればStringクラスのShuffleメソッドが有効になる
    @name.shuffle
  end
  # Userクラスを抜けるとrefinementsは無効になる
end

user = User.new('Alice')
user2 = User.new(12)
# Userクラス内ではshuffleメソッドが有効になっている
p user.shuffled_name # => "cliAe"
p user2.shuffled_name

# Userクラスを経由しない場合はshuffleメソッドは使えない
'Alice'.shuffle # => NoMethodError
