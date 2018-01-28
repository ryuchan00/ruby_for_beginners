# トップレベルのSecondクラス
class Second
  def initialize(player, uniform_number)
    @player = player
    @uniform_number = uniform_number
  end
end

module Clock
  # ClockモジュールのSecondクラス
  class Second
    def initialize(digits)
      @digits = digits
      # トップレベルのSecondクラスをnewしたい
      # クラス名の前に::を付けるとトップレベルのクラスを指定したことになる
      @baseball_second = ::Second.new('Clock', 10)
    end
  end
end

p Clock::Second.new(10)