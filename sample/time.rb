# Timeクラスで日時を表すオブジェクトを作成する
time = Time.new(2017, 1, 31, 12, 30, 59)
p time

# dateライブラリをrequireするとDateクラスとDateTimeクラスが使えるようになる
require 'date'

# Dateクラスで日付を表すオブジェクトを作成する
date = Date.new(2016, 1, 31)
p date

date_time = DateTime.new(2017, 1, 31, 23, 30, 59)
p date_time