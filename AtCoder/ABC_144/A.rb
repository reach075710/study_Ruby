#set
a,b = gets.chomp.split(" ").map(&:to_i)
answer = 0

#main
if a.to_s.length == 1 && b.to_s.length == 1 then
  answer = a * b
else
  answer = -1
end

print ("#{answer}\n")