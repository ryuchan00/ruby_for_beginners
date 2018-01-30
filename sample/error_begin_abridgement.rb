require 'date'

def to_data(string)
  Date.parse(string) rescue nil
end

# パース可能な文字列を渡す
p to_data('2017-01-01') # => <Data: .....>

# パース不可能な文字列を渡す
p to_data('abcdef') # => nil
