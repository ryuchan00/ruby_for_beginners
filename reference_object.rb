# aとbはどちらも同じ文字列だが、オブジェクトとしては別物
a = 'hello'
b = 'hello'
p a.object_id
p b.object_id

# cにbを代入する。bとcはどちらも同じオブジェクト
c = b
p c.object_id

def m(d)
  d.object_id
  d.upcase!
end

p m(c)
p b
p a

# equal?メソッドを使って同じオブジェクトかどうか確認しても良い(treuなら同じオブジェクト)
p a.equal?(b)
p b.equal?(c)