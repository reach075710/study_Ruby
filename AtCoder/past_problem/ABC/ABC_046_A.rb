#set
coler_arr = gets.chomp.split(" ").map(&:to_i)

#main
coler_arr.sort!.uniq!
print ("#{coler_arr.length}\n")