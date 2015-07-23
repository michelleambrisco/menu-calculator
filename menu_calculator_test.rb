require 'minitest/autorun'
require 'minitest/pride'
require_relative 'menu_calculator'

class MenuCalculatorTest < Minitest::Test

  def setup
    @calculator = MenuCalculator.new("sample.txt")
  end

  def test_it_reads_a_file
    assert_equal 7, @calculator.file.length
  end

  def test_it_returns_total
    assert_equal "0.1505E2", @calculator.total.to_s
  end

  def test_food_items_point_to_price
    assert_equal "0.275E1", @calculator.parse["french fries"].to_s
  end

  def test_it_can_return_a_list_of_matching_items
    assert_equal ["mixed fruit", "mixed fruit", "mixed fruit", "mixed fruit", "mixed fruit", "mixed fruit", "mixed fruit"], @calculator.calculate
  end
end
