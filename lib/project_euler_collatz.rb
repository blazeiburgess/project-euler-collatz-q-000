def even_next(n)
	return n/2
end

def odd_next(n)
	return 3*n + 1
end

def next_value(n)
	if n % 2 == 0
		even_next(n)
	else
		odd_next(n)
	end
end

def collatz(n)
	collect = [n]
	until collect[-1] == 1
		collect << next_value(collect[-1])
	end
	collect
end

def longest_collatz
	top_count, top_num = 0, 0
	(13..1_000_000).each do |num|
		if collatz(num).count > top_count
			top_count = collatz(num).count
			top_num = num
		end
	end
	return top_num
end
