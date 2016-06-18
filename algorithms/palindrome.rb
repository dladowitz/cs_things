class String #Monkey Patching
  def is_palindrome?
    reversed_word = self.reverse
    reversed_word = reversed_word.split ""
    word = self.split ""

    result = true
    word.each_with_index do |letter, index|

      if word[index] != reversed_word[index]
        result = false
        break
      end
    end

    return puts result
  end

end


"rotor".is_palindrome?
"motor".is_palindrome?
# puts is_palindrome('rotor')
# puts is_palindrome('motor')
