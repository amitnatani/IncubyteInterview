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
end