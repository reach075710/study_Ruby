#set
s_arr = gets.chomp.split("")
s_length = s_arr.length
count = 0

#main
0.upto((s_length - 1) / 2) do |i|
  count += 1 if s_arr[i] != s_arr[s_length - 1 - i]
end

print ("#{count}\n")