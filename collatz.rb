def collatz(number)
	if number.even?
		return number/2
	else
		return 3*number+1
	end
end

def sequence(number)
	array=[number]
	if number==1
		array=[1]
	else
		until array.last==1
			array<<collatz(number)
			number=collatz(number)
		end
	end

	return array
end


lengths=[]
for i in 1..1000000 do
	lengths<<sequence(i).length
end

puts ("The integer with the longest collatz sequence for integers between 1 and 1,000,000 is ")
puts (lengths.index(lengths.max))+1


