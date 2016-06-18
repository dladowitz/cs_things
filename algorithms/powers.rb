class Integer
  def to_the_power_of(n)
    if n == 0
      return 1
    else
      return self * self.to_the_power_of(n-1)
    end
  end
end


puts 5.to_the_power_of(3)
puts 5.to_the_power_of(4)
