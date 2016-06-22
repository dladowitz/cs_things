require 'pry'

# def flatten(array, flattened = [])
#   array.each do |element|
#     if element.is_a? Array
#       flattened = flatten(element, flattened)
#     else
#       flattened << element
#     end
#   end
#
#   return flattened
# end
#
# def flattify(array)
#   array.each_with_object([]) do |element, flattened|
#     flattened.push *(element.is_a?(Array) ? flattify(element) : element)
#   end
# end
#
# while array.any? { |e| e.is_a?(Array) } do
#   array = array.each_with_object([]) do |element, flattened|
#     element.is_a?(Array) ? element.inject(flattened,&:<<) : flattened << element
#   end;
# end;

# def flattify(array, flattened = [])
#   array.each do |element|
#     if element.is_a? Array
#       flattened = flattify(element, flattened)
#     else
#       flattened << element
#     end
#   end
#   return flattened
# end




def flattify(array, flattened = [])
  array.each do |element|
    if element.is_a? Array
      flattify(element, flattened)
    else
      flattened << element
    end
  end

  return flattened
end







a = ["A", "A", "B", ["A", "B"], "A", ["A", ["A"]], "C"]

p flattify(a)
