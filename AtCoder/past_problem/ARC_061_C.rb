#set
s = gets.chomp.split("").map(&:to_i)
s_length = s.join.length

#main
s.repeated_permutation(s_length - 1) do |bits|
  p bits



end

