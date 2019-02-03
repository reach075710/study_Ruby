#回文数について解く

#積の文字列長を確認して、偶数桁と奇数桁で場合わけ

#SET
i = 100
j = 100
k = 0

answer = 0

#MAIN

for i in 100..999
    for j in 100..999
        answer = i * j
        answer_float_to_str = answer.to_s
        if answer_float_to_str.length % 2 == 0 then
            head_leng = answer_float_to_str.length / 2 
            for k in 1..head_leng
        
        
            
        end

    end
end

# puts i * j
# check_number_length = (i * j).to_s
# p check_number_length