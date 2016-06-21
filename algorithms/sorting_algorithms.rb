def insertion_sort(array)
  array.each_with_index do |element, index|
    array =  slide_or_insert(array, index)
  end

  return array
end

def slide_or_insert(array, index)
  key = array[index]

  while index >= 0
    if array[index - 1] > key
      array[index] = array[index - 1]
    else
      array[index] = key
      break
    end

    index -= 1
  end

  return array
end


array = %w(10 5, 15, 0, 25, 20, 35)

p insertion_sort(array)
