# 7.5.1 selfのつけ忘れで不具合が発生するケース
class User
  attr_accessor :name

  def rename_to(name)
    self.name = name
  end
end

user = User.new
p user.name # 何も格納されていないのでnil
p user.rename_to('Taro')
p user.name # Taroになっているはず
