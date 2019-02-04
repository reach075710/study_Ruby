#回文数について解く

#積の文字列長を確認して、偶数桁と奇数桁で場合わけ

#SET
i = 100
j = 100
k = 0
l = 0
m = 0
n = 0

answer_arr = Array.new
temp_answer = 0
max_answer = 0

#MAIN


for i in 100..999
    for j in 100..999
        answer_arr = Array.new
        k = 0

        answer = i * j
    
        loop do
            answer_arr[k] = answer % 10
            answer = answer / 10

            if answer == 0 then
                break
            end

            k += 1
        end

        # l = 0
        # loop do
        #     m = answer_arr[l]
        #     answer_arr[l] = answer_arr[k]
        #     answer_arr[k] = m

        #     l += 1
        #     if k - l <= l
        #         break
        #     end
        # end

        l = 0
        loop do
            if answer_arr[l] != answer_arr[k - l] then
                break
            else
                if k - l <= l then
                    temp_answer = answer_arr.join().to_i
                    
                    if temp_answer >= max_answer then
                        max_answer = temp_answer
                    end

                    break

                end
            
            end
            l += 1
        end
    end
end

p max_answer