# Method to add numbers provided in given string
class Program
  def add(numbers)
    return 0 if numbers.nil? || numbers.empty?

    sum = 0
    numbers.split(",").each do |number|
      if number.include?("\n")
        sum += number.split("\n").map(&:to_i).sum
      else
        sum += number.to_i
      end
    end
    sum
  end
end