# n番目の素数を求めよ

#SET
i = 0
j = 0
k = 0

prime_factor_arr = Array.new
prime_factor_arr[0] = 2
#MAIN
n = 10001
loop do
    i += 1
    if i % 2 != 0 then
        for j in 2..i
            if i % j == 0 then
                if i != j then
                    break
                else
                    k += 1
                    prime_factor_arr[k] = i
                    break
                end
            end
        end
    end

    if ( k + 1 ) >= n then
        break
    end
end

p prime_factor_arr[k]