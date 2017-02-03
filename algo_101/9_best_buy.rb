# Exercise 9
# Say you have an array for which the ith element is the price of a given stock on day i.
# Design an algorithm to find the maximum profit. You may complete as many transactions as you like (ie, buy one and sell one share of the stock multiple times). However, you may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).

def max_profit(prices)
  current_profit = 0
  buy = 0
  sell = 0
  in_trade = false
  arr_idx_length = prices.length - 1

  prices.each_with_index do |value,index|
    if index == arr_idx_length && in_trade == true
      sell = value
      puts "last day must sell. at #{value}"
      current_profit += (sell-buy)
      puts "current_profit: #{current_profit}"
      break
    elsif index == arr_idx_length && in_trade == false
      break
    else
    end

    if in_trade == false
      if value < prices[index+1]
        buy = value
        in_trade = true
        puts "buy at #{value}"
      end
    else
      if value > prices[index+1]
        sell = value
        in_trade = false
        puts "sell at #{value}"
        current_profit += (sell-buy)
        puts "current_profit: #{current_profit}"
      end
    end
  end

  puts "total profit: #{current_profit}"

end

max_profit([1, 2, 5, 9, 4, 3, 7, 8, 5])
max_profit([0, 1, 4, 4, 8, 1, 8, 0, 8])
max_profit([8, 7, 5, 5, 5, 5, 1, 1, 0])
max_profit([1, 10, 1, 10, 1, 10, 1, 10])
