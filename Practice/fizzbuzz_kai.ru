#set
n = gets.chomp.to_i


#main
1.upto(n) do |i|
  i_arr = i.to_s.split("").map(&:to_i)
  i_length = i_arr.length
  chk_multiple = i_arr.inject(:+)
  chk_have_3 = 0
  0.upto(i_length - 1) do |j|
    next if i_arr[j] == 0
    chk_have_3 = 1 if i_arr[j] % 3 == 0 
  end
  if chk_multiple % 3 == 0 || chk_have_3 == 1 then
    print ("aho\n")
  else
    print ("#{i}\n")
  end
end