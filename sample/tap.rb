# メソッド チェーン を 使っ て いる この コード を デバッグ し たい
'#043c78'.scan(/\w\w/).map(&:hex)
# tap メソッド を 使っ て、 scan メソッド の 戻り 値 を ターミナル に 表示 する
'#043c78'.scan(/\w\w/).tap { |rgb| p rgb }.map(&:hex) #=> ["04", "3 c", "78"]