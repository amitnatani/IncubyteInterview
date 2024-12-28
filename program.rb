# Method to add numbers provided in given string
class Program
  def add(numbers)
    return 0 if numbers.empty?

    delimeter = ','
    if numbers.start_with?("//")
      delimeter = numbers[2]
      numbers = numbers[3..]
    end
  
    sum = 0
    numbers.split(delimeter).each do |number|
      if number.include?("\n")
        sum += number.split("\n").map(&:to_i).sum
      else
        sum += number.to_i
      end
    end
    sum
  end
end
