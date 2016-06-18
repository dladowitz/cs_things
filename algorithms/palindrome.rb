class String #Monkey Patching
  def is_palindrome?
    reversed_word = self.my_reverse
    reversed_word = reversed_word.split ""
    word = self.split ""

    result = true
    word.each_with_index do |letter, index|

      if word[index] != reversed_word[index]
        result = false
        break
      end
    end

    return result
  end

  def is_palindrome_by_recursion?
    chars = self.split ""
    if chars.length == 1
      return true
    elsif chars[0] != chars[-1]
      return false
    else
      shorten_word = (chars.slice(1..-2)).join
      shorten_word.is_palindrome_by_recursion?
    end
  end

  def my_reverse
    result = []
    string = self.split ""

    string.each do |char|
      result.unshift char
    end

    result.join
  end
end


puts "rotor".is_palindrome?
puts "motor".is_palindrome?

puts "___________________________"

puts "rotor".is_palindrome_by_recursion?
puts "motor".is_palindrome_by_recursion?
# puts is_palindrome('rotor')
# puts is_palindrome('motor')
