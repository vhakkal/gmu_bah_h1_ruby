#!/usr/bin/env ruby
# Return a reversed copy of the array
def reverse(an_array)
  an_array.reverse
end
# Return a map of letters and counts of letters
# Letters should be lowercase before counting
# For example, histogram('Hello') returns {'h'=>1,'e'=>1,'l'=>2,'o'=>1}
def histogram(a_string)
	#words = a_string.downcase
	words = a_string.gsub(/\s+/, "").downcase.split ""
 	frequency = Hash.new(0)
 	words.each { |word| frequency[word] += 1 }
 	return frequency
end
# Sum all the numbers in the array
# an_array can contain lots of different things
# Be sure to only sum the numbers
# (Hint: the is_a? method might be useful here)
def sum_only_numbers(an_array)
	sum = 0;
	an_array.each do |element|
		if element.is_a? Numeric
			sum += element
		end
	end
	return sum
end
# For i from 1 to 100, return an array.
# The elements in the array should follow this algorithm:
# If i is a multiple of 3, the element is 'Fizz'
# If i is a multiple of 5, the element is 'Buzz'
# If i is a multiple of 3 and 5, the element is 'FizzBuzz'
# Otherwise, the element is simply the value of i
# For example [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', ..., 14, 'FizzBuzz', ...]
def fizzbuzz
	data = []

	array_list = (1..100).to_a
	array_list.each do |number| 
		case
		when number % 3 == 0 && number % 5 == 0
			value = 'FizzBuzz'
		when number % 3 == 0
			value = 'Fizz'
		when number % 5 == 0
			value = 'Buzz'
		else 
			value = number
		end
		data[number] = value
	end
	return data

end
# Uncomment each of these to test your functions
puts reverse([3,6,'dog']).inspect
puts histogram('The Quick brown fox').inspect
puts sum_only_numbers [4, 'foo', [ ], 27, :rain, 3.14]
puts fizzbuzz.join("\n")