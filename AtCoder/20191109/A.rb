#set
n = gets.chomp.to_i
count = 0


#main
if n.even? then
  count = (n / 2) - 1
else
  count = n / 2

end

print ("#{count}\n")