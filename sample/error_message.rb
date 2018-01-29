begin
  1 / 0
rescue => e
  puts "エラークラス:#{e.class}"
  puts "エラーメッセージ:#{e.message}"
  puts "バックトレース -----"
  puts e.backtrace
  puts "-----"
  # Ruby2.5からは、これで事足りる
  puts e.full_message
end