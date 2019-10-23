n = gets.chomp.to_i
mochi_arr = Array.new(n, 0)
(0 .. n - 1 ).each do |i|
    mochi_arr[i] = gets.chomp.to_i
end

chk_arr = mochi_arr.sort
count = 0
(0 .. n - 1).each do |j|
    if j == 0 then
        count += 1
    elsif chk_arr[j] != chk_arr[j - 1] then
        count += 1
    end
end

print ("#{count}\n")