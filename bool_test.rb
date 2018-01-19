t1 = true
t2 = true
f1 = false
p t1 and f1
p t1 or f1
p (not t1)

# &&,||とand,orでは挙動が違うよ
p t1 || t2 && f1
p (t1 or t2 and f1)