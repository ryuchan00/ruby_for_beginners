# 9.3 意図的に例外を発生させる
def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    # RuntimeErrorではなく、ArgumentErrorを発生させる
    raise ArgumentError, "無効な国名です。 #{country}"
    # または、raiseメソッドに例外クラスのインスタンスを渡す(newの引数はエラーメッセージになる)
    # raise ArgumentError.new("無効な国名です。#{country}")
  end
end

currency_of(:italy)