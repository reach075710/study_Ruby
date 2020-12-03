# Set
n_arr = gets.chomp.split("").map(&:to_i).sort
n_len = n_arr.length
n_sum = 0
0.upto(n_len - 1) do |i|
  n_sum += n_arr[i]
end

count = 0

# Main
(n_len).times do
  surplus = n_sum % 3
  tmp_count = 0
  del_num = 0
  if surplus == 0 && n_sum > 0 then
    print ("#{count}\n")
    exit
  elsif surplus == 1 then
    0.upto(n_len - 1) do |i|
      if n_arr[i] % 3 == 1 then
        del_num = n_arr[i] 
        n_sum = n_sum -  del_num
        count = 1
        break
      end
    end
    if del_num == 0 then
      0.upto(n_len - 1) do |i|
        if n_arr[i] % 3 == 2 then
          del_num = n_arr[i] 
          n_sum = n_sum -  del_num
          tmp_count += 1
          if tmp_count == 2
            count = 2
            break
          end
        end
      end
    end
  else
    0.upto(n_len - 1) do |i|
      if n_arr[i] % 3 == 2 then
        del_num = n_arr[i] 
        n_sum = n_sum - del_num
        count = 1
        break
      end
    end
    if del_num == 0 then
      0.upto(n_len - 1) do |i|
        if n_arr[i] % 3 == 1 then
          del_num = n_arr[i]
          n_sum = n_sum - del_num
          tmp_count += 1
          if tmp_count == 2 && n_sum % 3 == 0 && n_sum > 0 then
            count = 2
            break
          end
        end
      end
    end
  end
end

count = -1
print ("#{count}\n")
exit