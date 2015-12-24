# loop

1.upto 100 do |n|
=begin
fizz = n % 3 == 0
buzz = n % 5 == 0
bang = n.to_s.start_with?("1") == true
	if bang
		puts "Bang\n"
	elsif fizz
		puts "Fizz\n"
	elsif buzz
		puts "Buzz\n"
	else 
		puts n
	end
=end
result = ""
	if n.to_s.start_with?("1") == true
		result << "Bang"
	elsif n % 3 == 0
		result << "Fizz"
	elsif n % 5 == 0
		result << "Buzz"
	else
		result = n
	end
	puts result
end


# while loop
=begin
n = ""
while n.length <= 100
fizz = n % 3 == 0
buzz = n % 5 == 0
bang = n.to_s.start_with?("1") == true
	if bang
		puts "Bang\n"
	elsif fizz
		puts "Fizz\n"
	elsif buzz
		puts "Buzz\n"
	else 
		puts n
	end
end
=end