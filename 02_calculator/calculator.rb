def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(array)
	result =0
	array.each do |num|
		result += num
	end
	result
end

def multiply(*args)
	result = 1
	args.each do |num|
		result *= num
	end
	result
end

def power(num1, num2)
	num1 ** num2
end

def factorial(num)
	result =1
	if num == 1 || num == 0
		result = 1
	else
		while num > 0 do
			result *= num
			num -= 1
		end
	end
	result
end