class User
  # weight は 外部 に 公開 し ない
  attr_reader :name

  def initialize(name, weight)
    @name = name @weight = weight
  end

  def heavier_than?(other_user)
    other_user.weight < @weight
  end
end

alice = User.new('Alice', 50)
bob = User.new('Bob', 60)

alice.heavier_than?(bob)

