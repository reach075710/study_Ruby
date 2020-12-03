#set
n = gets.chomp.to_i
s_arr = gets.chomp.split("")

#main
0.upto(s_arr.length - 1) do |i|
  n.times do
    if s_arr[i] == 'Z' then
      s_arr[i] = 'A'
    else
      s_arr[i].succ!
    end
  end
end

print ("#{s_arr.join}\n")