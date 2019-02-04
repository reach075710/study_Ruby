#回文数について解く

#積の文字列長を確認して、偶数桁と奇数桁で場合わけ

#SET
i = 100
j = 100
k = 0
l = 0
x = 0

answer_arr = Array.new

#MAIN


for i in 100..999
    for j in 100..999
        answer = i * j
        
        k = 0
        loop do
            answer_arr[k] = answer % 10
            answer = answer / 10

            if answer == 0 then
                break
            end

            k += 1
        end

        for l in 0..k
            if answer_arr[l] != answer_arr[k] then
                break
            else
                l += 1
                k -= 1

                if k <= l then
                    puts answer_arr.join()
                    break
                end
            end
        end
    end
end

