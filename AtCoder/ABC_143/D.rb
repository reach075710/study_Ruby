#set
n = gets.chomp.to_i
s = gets.chomp.split(" ").map(&:to_i).sort
count = 0

#main
0.upto(n - 1) do |i|
    j = i + 1
    k = n - 1

    while j < k do
        if s[k] < s[i] + s[j] then
            j += 1
        else
            count += (k - j)
            k -= 1
        end
    end
end

print ("#{count}\n")