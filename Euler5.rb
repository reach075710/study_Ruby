#1~nまでの全ての数の最小公倍数をもとめる

#nまでの数字で１種類の素因数しか持たない数を全て掛け合わせれば良い

i = 0
j = 0
k = 0
prime_factor_arr = Array.new

#MAIN

for i in 1..n
    j = 2   #jは2以上
    loop do
        if i % j == 0 then
            prime_factor_arr[k] = j
            i = i / j

            if i % j != 0 then
                break
            end
          
            k += 1
        end
        j += 1
    end

end