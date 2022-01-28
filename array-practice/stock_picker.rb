# # Stock Picker

def stock_picker(prices)
  # Can always make zero dollars by not buying/selling
  best_pair = nil
  best_profit = 0
  
  prices.each_index do |buy_date|
    prices.each_index do |sell_date|
      # Can't sell before buy
      next if sell_date < buy_date
      
      profit = prices[sell_date] - prices[buy_date]
      if profit > best_profit
        # Choose best days. Greed is good.
        best_pair, best_profit = [buy_date, sell_date], profit
      end
    end
  end
  
  best_profit
end

p stock_picker([10, 12, 4, 5, 9]) #=> 5
p stock_picker([14, 20, 4, 12, 5, 11]) #=> 8