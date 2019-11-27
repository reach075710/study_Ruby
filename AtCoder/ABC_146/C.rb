#set
a,b,x = gets.chomp.split(" ").map(&:to_i)
high_limit = 10 ** 9
low_limit = 0
middle = 0
value = 0

#main
if x >= a * high_limit + b * high_limit.to_s.length then
  print ("#{high_limit}\n")
  exit
end

loop do
  middle = (high_limit + low_limit) / 2
  value = a * middle + b * middle.to_s.length
  
  if high_limit < low_limit then
    break
  end

  if value > x then
    high_limit = middle - 1
  elsif value < x
    low_limit = middle + 1
  else
    break
  end
  # p middle
end

print ("#{middle}\n") if middle != -1
print ("0\n") if middle == -1