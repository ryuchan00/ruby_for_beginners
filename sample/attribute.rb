class User
  # first_nameの読み書きを許可する
  attr_accessor :first_name
  # 省略

  # initializeは特に宣言されなければprivateメソッド
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def full_name
    "#{first_name} #{@last_name}"
  end
end

user = User.new('Alice', 'Ruby', 20)
user.first_name # => "Alice"
# first_nameを変更する
user.first_name = 'アリス'
p user.first_name