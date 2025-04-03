def stock_picker(stock_prices)
  max_profit = 0
  best_days = []

  for i in 0...stock_prices.length - 1
    for j in i + 1...stock_prices.length
      if stock_prices[j] - stock_prices[i] > max_profit
        best_days = [i, j]
        max_profit = stock_prices[j] - stock_prices[i]
      end
    end
  end
  return best_days
end