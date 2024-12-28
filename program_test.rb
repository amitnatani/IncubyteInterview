require 'test/unit'
require_relative 'program'

class AddTest < Test::Unit::TestCase
  def setup
    @program = Program.new
  end

  def test_add
    result = @program.add('')
    assert_equal 0, result
  end

  def test_add_with_comma_delimeter
    result = @program.add('1,2,3')
    assert_equal 6, result
  end

  def test_add_with_comma_delimeter_and_spaces
    result = @program.add('1, 2, 3')
    assert_equal 6, result
  end

  def test_add_with_new_lines
    result = @program.add("1\n2,3")
    assert_equal 6, result

    result = @program.add("1,2\n\n4,3")
    assert_equal 10, result

    result = @program.add("\n1,2\n\n4,3\n")
    assert_equal 10, result
  end

  def test_add_with_custom_delimeter
    result = @program.add("//:1:2:3")
    assert_equal 6, result

    result = @program.add("//;1\n10;2;7")
    assert_equal 20, result
  end
end
