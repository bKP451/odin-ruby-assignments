# def stock_picker(prices)
#   i = 1
#   profit = 0
#   while i < prices.length do
#     p "Day #{i} : selling price: #{prices[i]}  cost price: #{prices[0]} Profit: #{prices[i] - prices[0]} "
#     i = i + 1
#   end
# end

def stock_picker(prices)
  profit = 0
  lowest_price = prices[0]
  i = 0

  while i < prices.length
    if prices[i] < lowest_price
      lowest_price = prices[i] 
    end

    if prices[i] - lowest_price > profit
      profit = prices[i] - lowest_price
    end
    i = i + 1
  end


  p profit
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])