#nまでの素数の和を求めよ

#set
n = 2 * ( 10 ** 6 )
i = 0
j = 0

#main
if n == 1 then
    answer = 0
elsif n == 2 then
    answer = 2
else
    answer = 5
end

loop do
    i += 1
    #if i != 1 || i != 2 then
        if i % 2 == 1 then
            max_number = Math.sqrt(i).to_s.split(".")[0].to_i
            for j in 2 .. max_number
                if i % j == 0  then
                    break
                end

                if j == max_number
                    answer += i
                end
            end
        end
    #end
    if i == n then
        break
    end
end

p answer