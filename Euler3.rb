i = 600851475143
j = 0


loop do
        j = j + 1
        if i % j == 0 then
            i = i / j

            if i <= j then 
                break
            end

        end
    end

    puts j