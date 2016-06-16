# num = 38, the process is like: 3 + 8 = 11, 1 + 1 = 2. Since 2 has only one digit, return it.
def add_digits(number)
  while number >= 10
    puts "Current number is: #{number}"
    number = split_and_add_number(number)
  end
  puts "Ending number is: #{number}"
  number
end


def split_and_add_number(number)
  new_number = 0
  while number > 0
    last_digit = number % 10
    new_number += last_digit
    number = number / 10
  end

  return new_number
end


puts add_digits(38)

# puts split_and_add_number(38)
