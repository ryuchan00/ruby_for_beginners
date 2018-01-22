# 組み込み変数でマッチの結果を取得する
text = '私の誕生日は1997年7月17日です。'

# =-やmatchメソッドを使うとマッチした結果が組み込み変数に代入される
text =~ /(\d+)年(\d+)月(\d+)日/

# MatchDataオブジェクトを取得する
p $~ #<MatchData "1997年7月17日" 1:"1997" 2:"7" 3:"17">

# マッチした部分全体を取得する
p $&

# 1~3番目のキャプチャを取得する
p $1
p $2
p $3

# 最後のキャプチャ文字列を取得する
p $+

##########

# Regexp.last_matchでマッチの結果を取得する
# 組み込み変数でマッチの結果を取得する
text = '私の誕生日は1997年7月17日です。'

# =-やmatchメソッドを使うとマッチした結果が組み込み変数に代入される
text =~ /(\d+)年(\d+)月(\d+)日/

# MatchDataオブジェクトを取得する
Regexp.last_match #<MatchData "1997年7月17日" 1:"1997" 2:"7" 3:"17">

# マッチした部分全体を取得する
p Regexp.last_match(0)

# 1~3番目のキャプチャを取得する
p Regexp.last_match(1)
p Regexp.last_match(2)
p Regexp.last_match(3)

# 最後のキャプチャ文字列を取得する
p Regexp.last_match(-1)

##########

# マッチすればtrueを返す
p /\d{3}-\d{4}/.match?('123-4567')

# マッチしても組み込み変数やRegexp.last_matchを書き換えない
# そのため高速に処理できる
p $~
p Regexp.last_match