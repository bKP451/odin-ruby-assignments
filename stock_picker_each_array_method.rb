def stock_picker(prices)
  profit = 0
  lowest_price = prices[0]
  i = 0
  index_of_sell_date = 0
  temp_index_of_buy_date = 0
  index_of_buy_date = 0
  
  prices.each do |price|
    if price < lowest_price
      lowest_price = price
      temp_index_of_buy_date = i
    end

    current_profit = price - lowest_price

    if current_profit > profit
      profit = current_profit
      index_of_sell_date = i
      index_of_buy_date = temp_index_of_buy_date
    end

    i = i + 1

  end


  p [index_of_buy_date, index_of_sell_date]
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])