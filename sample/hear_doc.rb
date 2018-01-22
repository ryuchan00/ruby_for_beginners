# ヒアドキュメントを直接引数として渡す
a = "Ruby"
a.prepend(<<TEXT)
Java
PHP
TEXT
puts a