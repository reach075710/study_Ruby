#set
a,b,x = gets.chomp.split(" ").map(&:to_i)
count = 0

#main
a.upto(b) do |i|
  count += 1 if i % x == 0
end

print ("#{count}\n")