#set
n = gets.chomp.to_i
s_arr = gets.chomp.split("").map(&:to_i)
count = 0
chk = 0

#main
0.upto(9) do |i|
  0.upto(9) do |j|
    0.upto(9) do |k|
      chk = 0
      
      0.upto(n - 1) do |l|
        if chk == 0 then
          chk += 1 if s_arr[l] == i
        elsif chk == 1 then
          chk += 1 if s_arr[l] == j
        else
          chk += 1 if s_arr[l] == k
          break
        end
      end

      if chk == 3 then
        count += 1
        next
      end
    end
  end
end

print ("#{count}\n")
