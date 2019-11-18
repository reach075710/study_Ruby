
#set

n,a,b = gets.chomp.split(" ").map(&:to_i)
chk_num = 0
counter = 0
( 1 .. n ).each do |num|
    chk_num = 0
    num.to_s.split("").map(&:to_i).each do |i|
        chk_num += i
    end
    if chk_num >= a && chk_num <= b then
        counter += num
    end
end

print ("#{counter}\n")