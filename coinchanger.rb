def change(cents_received)
	coins = {penny: 0, nickel: 0, dime: 0, quarter: 0}
	coin_value = {quarter: 25, dime: 10, nickel: 5, penny: 1}
	

	coin_value.each do | coin, value|
      while
      	value <= cents_received
      	coins[coin] += 1
      	cents_received = cents_received - value
      end
    end
 coins
end




def hashconverter(coins)
	change = ""
	coins.each do |key, value|
		if value > 0
		change << " " + value.to_s + " " + key.to_s+ "s"
	    end
		
	end
	change
end