class Integer
  def factorial
    num = 1
    self.times do |i|
      num *= i + 1
    end
    num
  end


  def to_roman
    num = self
    orn = ""

  while num >= 1000
    orn += 'M' if num % 1000 != num
    num = num -= 1000
  end
  while num >= 500
    orn += 'D' if num % 500 != num
    num = num -= 500
  end
  while num >= 100
    orn += 'C' if num % 100 != num
    num = num -= 100
  end
  while num >= 50
    orn += 'L' if num % 50 != num
    num = num -= 50
  end
  while num >= 10
    orn += 'X' if num % 10 != num
    num = num -= 10
  end
  while num >= 5
    orn += 'V' if num % 5 != num
    num = num -= 5
  end
  while num >= 1
    orn += 'I' if num % 1 != num
    num = num -= 1
  end
  return orn
  end
end

puts 5.factorial
puts 25.to_roman
