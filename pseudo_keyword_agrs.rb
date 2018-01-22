# ハッシュを引数として受け取り、擬似キーワード引数を実現する
def buy_burger(menu, options = [])
  drink = options[:dirnk]
  potato = options[:potato]
end

p buy_burger('cheese', dirnk: true, potato: true)