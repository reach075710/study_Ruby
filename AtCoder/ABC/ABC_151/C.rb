# set
n,m = gets.chomp.split(" ").map(&:to_i)
count_AC = 0
count_WA = 0
chk_arr = Array.new(n) { Array.new(3)}

0.upto(n - 1) do |i|
  # index
  chk_arr[i][0] = i + 1
  
  # flug
  chk_arr[i][1] = 0

  # temp_WA
  chk_arr[i][2] = 0
end

# main
0.upto(m - 1) do |i|
  num,result = gets.chomp.split(" ")
  num = num.to_i
  # print ("#{num},#{result}\n")
  next if chk_arr[num - 1][1] == 1
  chk_arr[num - 1][2] += 1 if result == "WA"
  # p chk_arr[num - 1][2]
  if result == "AC" then
    count_AC += 1
    count_WA += chk_arr[num - 1][2]
    chk_arr[num - 1][1] += 1
  end
end

print ("#{count_AC} #{count_WA}\n")