def is_happy(number)
  counter = 0
  while counter <= 50

    number = split_square_and_add_number(number)
    if number == 1
      return true
    end

    counter += 1
  end
  return false
end


def split_square_and_add_number(number)
  new_number = 0

  while number > 0
    last_digit = number % 10
    new_number += last_digit * last_digit
    number = number / 10
  end

  return new_number
end

puts is_happy(82)
