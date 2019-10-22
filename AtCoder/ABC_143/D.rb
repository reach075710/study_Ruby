#set
n = gets.chomp.to_i
s = gets.chomp.split(" ").map(&:to_i).sort.reverse
count = 0

#main
0.upto(n - 1) do |i|
    j = i + 1
    k = n - 1

    while j < k do
        if s[k] > s[i] - s[j] then
            count += (k - j)
            j += 1
        else
            k -= 1
        end
    end
end

print ("#{count}\n")