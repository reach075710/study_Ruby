#set
a,b,x = gets.chomp.split(" ").map(&:to_i)
limit = 
cash = 0
digits = 0

#main
loop do
  break if x < a * (10 ** digits) + b * digits
  digits += 1
end

if digits >= 10 then
  print ("1000000000\n")
  exit
end

if digits == 0 then
  print ("0\n")
  exit
end

(10 ** (digits - 1)).upto(10 ** 9) do |i|
  if x < a * i + b * i.to_s.length then
    cash = i - 1
    break
  end
end
print ("#{cash}\n")