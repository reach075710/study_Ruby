#1~nまでの全ての数の最小公倍数をもとめる

#nまでの数字で１種類の素因数しか持たない数を全て掛け合わせれば良い

i = 0
j = 0
k = 0
answer = 1
prime_factor_arr = Array.new
powered_prime_number_arr = Array.new

#MAIN
n = 20
for i in 2..n
   for j in 2..i
        if i % j == 0 then
            if i / j != 1
                break
            else
                prime_factor_arr[k] = i
                powered_prime_number_arr[k] = i
                k += 1
            end
        end
    end
end

for i in 0..k-1
    loop do
        if n <= powered_prime_number_arr[i] * prime_factor_arr[i] then
            break
        end
        powered_prime_number_arr[i] = powered_prime_number_arr[i] * prime_factor_arr[i]
    end
    answer = answer * powered_prime_number_arr[i]
end
puts answer