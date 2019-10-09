n = gets.chomp.to_i
card_arr = gets.chomp.split(" ").map(&:to_i).sort { |a, b| b <=> a}
alice = 0
bob = 0
(0 .. n - 1).each do |i|
    if i % 2 == 0 then 
        alice += card_arr[i].to_i
    else
        bob += card_arr[i].to_i
    end
end

print ("#{alice - bob}\n")