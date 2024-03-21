def stock_picker(prices)
  buy_sell = []
  max_profit = 0
  prices.each_with_index do |price, index|
      i = index + 1
      while i < prices.length
        if prices[i] - price > max_profit
          max_profit = prices[i] - price 
          buy_sell[0] = prices.index(price)
          buy_sell[1] = i
        end
        i += 1
      end
  end
  buy_sell
end

p stock_picker([17,3,6,9,15,8,6,1,10])
# [1,4]  for a profit of $15 - $3 == $12