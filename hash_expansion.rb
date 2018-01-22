h = {us: 'dollar', india: 'rupee'}
# 変数hのキーと値を**で展開させる
hash = {japan: 'yen', **h} # => {:japan=>"yes",:us=>"dollar",india=>"rupee"}
p hash

# **を付けない場合は構文エラーになる
# {japan: 'yen', h}

# **の代わりにmergeメソッドを使っても同じ結果が得られます。
hash = { japan: 'yen'}.merge(h)
p hash