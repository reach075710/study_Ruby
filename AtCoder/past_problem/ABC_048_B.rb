#set
a,b,x = gets.chomp.split(" ").map(&:to_i)
count = 0

#main
max_count = b / x
if a >= 0 then
  min_count = (a - 1) / x
else
  min_count = 1
end

count = max_count - min_count
print ("#{count}\n")