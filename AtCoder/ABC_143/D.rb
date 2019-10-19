#set
n = gets.chomp.to_i
s = gets.chomp.split(" ").map(&:to_i).sort
count = 0
high_limit = 0
low_limit = 0
sum = 0
#main
(0 .. n - 3).each do |i|
    (i + 1 .. n - 2).each do |j|
        sum = s[i] + s[j]
        low_limit = j + 1
        high_limit = n - 1
        loop do
            if s[(low_limit + high_limit) / 2] > sum then
                high_limit =  ((low_limit + high_limit) / 2)
            else
                low_limit = ((low_limit + high_limit) / 2)
            end
            print ("high_limit=#{high_limit}\n")
            print ("low_limit=#{low_limit}\n")
            if high_limit <= low_limit + 1 then
                count += (n - 1) - low_limit
                break
            end
        end
        # (j + 1 .. n - 1).each do |k|
        #     if (s[i] + s[j] ) > s[k] then
        #         count += 1
        #     end
        # end

    end
end

print ("#{count}\n")