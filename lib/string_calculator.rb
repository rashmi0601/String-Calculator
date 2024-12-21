class StringCalculator
  def add(numbers)
    if numbers.empty?
      return 0
    end
    if numbers.start_with?('//')
      del = numbers[2]
      numbers = numbers[4..]
    else
      del = ','
    end
    numbers = numbers.gsub("\n", del) if numbers.include?("\n")
    numbers = numbers.gsub(/[^\d#{del}]/, '') 
    numbers.split(del).map(&:to_i).sum
  end
end