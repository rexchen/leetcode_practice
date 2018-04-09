def max_profit(prices)
  profit = 0
  for i in 1...prices.length
    if prices[i] > prices[i-1]
      profit = profit + prices[i] - prices[i-1]
    end
  end
  return profit
end

puts max_profit([1,2,2,3])
