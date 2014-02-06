class Rp 
	#ITEMS = {:ROCK => 0, :SPOCK => 1, :PAPER => 2, :LIZARD => 3, :SCISSORS => 4 }  --later build this out !!!!
	ITEMS = {:ROCK => 1, :PAPER => 2, :SCISSORS => 3}
	def get_items
	       ITEMS.keys().to_a
	end

	def get_random_item_key()
		ITEMS.keys().to_a.sample
	end

	def win_lose(userThrow,serverThrow)
		userValue = ITEMS[userThrow.to_sym]
		serverValue = ITEMS[serverThrow.to_sym]
		results = ["It is a tie.","You Win!", "You lose."]
		return results[ ((userValue - serverValue) % 3).to_i]	    
	end

end
