class StringCalculator
    def add(numbers)
      if numbers.include?("\n")
        numbers = numbers.gsub("\n", ',') 
      end
      if numbers.empty? 
        0
      else
        split_numbers = numbers.split(',')
        integer_numbers = split_numbers.map(&:to_i)
        result = integer_numbers.sum
      end
    end
  end