# Method to add numbers provided in given string
class Program
  def add(numbers)
    return 0 if numbers.nil? || numbers.empty?

    numbers.split(",").map(&:to_i).sum
  end
end