def factorial(n)
  result = 1
  n.times do |n|
    n += 1 # n starts at 0 here
    result *= n
  end

  result
end

puts "\n---------- Running Normal Factorial ----------"
puts "Factorial of 5: #{factorial(5)}"
puts "Factorial of 6: #{factorial(6)}"
puts "Factorial of 5000: #{factorial(5000)}"

def recursive_factorial(n, result = 1)
  if n == 1
    return result
  else
    result = result * n
    return recursive_factorial(n-1, result )
  end
end


puts "\n---------- Running Recursive Factorial ----------"
puts "Factorial of 5: #{recursive_factorial(5)}"
puts "Factorial of 6: #{recursive_factorial(6)}"
puts "Factorial of 10000: #{recursive_factorial(5000)}"
