def iterative_fib(n)
	array=[0 , 1]

	for i in 2..n do
		array<<(array[i-1]+array[i-2])		
	end

	return array[n]
end


def recursive_fib(n)
	if n==0 || n==1
		return n
	else
		return recursive_fib(n-2)+recursive_fib(n-1)
	end
end


require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end
