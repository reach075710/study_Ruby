#1~nまでの全ての数の最小公倍数をもとめる

#nまでの数字で１種類の素因数しか持たない数を全て掛け合わせれば良い

i = 0
j = 0
k = 0
prime_factor_arr = Array.new

#MAIN
n = 10
for i in 2..n
   for j in 2..i
        if i % j == 0 then
            if i / j != 1
                break
            else
                prime_factor_arr[k] = i
                k += 1
            end
        end
    end
end
puts prime_factor_arr