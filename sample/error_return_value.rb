# 9.6.4 例外処理と戻り値
# 正常に終了した場合
ret =
    begin
      'OK'
    rescue
      'error'
    ensure
      'enscue'
    end
p ret # => "OK"

# 例外が発生した場合
ret =
    begin
      1 / 0
      'OK'
    rescue
      'error'
    ensure
      'enscue'
    end
p ret # => "error"
