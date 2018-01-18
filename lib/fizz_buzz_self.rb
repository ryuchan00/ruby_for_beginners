(1..100).to_a.each do |n|
  out = ""
  if n % 3 == 0;
    out += "Fizz"
  end
  if n % 5 == 0;
    if !out.empty?
      out += " "
    end
    out += "Buzz"
  end
  puts out.empty? ? n.to_s : out
end