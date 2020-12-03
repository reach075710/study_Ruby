#set
a,b = gets.chomp.split(" ").map(&:to_i)
curtains = 0
answer = 0

#main
curtains = b * 2
if a >= curtains then
    answer = a - curtains
else
    answer = 0
end

print ("#{answer}\n")