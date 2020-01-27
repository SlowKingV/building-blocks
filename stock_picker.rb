
def pick(stock)
    low, high = stock[0], 0
    old_low, old_high = low, high
    prof = high - low
    best = [0, 0]
    
    for i in 1...stock.size
        val = stock[i]
        ind_n = 0

        if val < low
            low = val
            high = 0
            prof = high - low
        elsif val > high
            high = val
            prof = high - low
            ind_n = 1
        end
        
        if prof > (old_high - old_low)
            best[ind_n] = i
            old_low = low
            old_high = high
        end
    end

    return best
end

try_a = [15, 3, 9, 8, 12, 6, 2]
try_b = [10, 9, 8, 7, 6, 5]
try_c = [5, 6, 7, 8, 9, 10]

actual_try = try_b

res = pick(actual_try)

if res[1] != 0
    puts "The stock prices are: #{actual_try}\nThe best days to buy is: Day number #{res[0]}\nThe best day to sell is: Day number #{res[1]}\nThe profit you'll get is: $#{actual_try[res[1]] - actual_try[res[0]]}"
else
    puts "There's no profit at all"
end
