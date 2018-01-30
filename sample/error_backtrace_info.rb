# 9.6.6 $!と$@に格納される例外情報
# rescue節で例外情報を変数eに格納する
begin
  1 / 0
rescue => e
  puts "#{e.class} #{e.message}"
  puts e.backtrace
end

# 組み込み変数の$!と$@に格納された例外情報を使う
begin
  1 / 0
rescue
  puts "#{e.class} #{e.message}"
  puts $@
end
