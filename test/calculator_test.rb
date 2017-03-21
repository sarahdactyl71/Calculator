require 'minitest/autorun'
require 'minitest/pride'
require './lib/calculator'

class CalculatorTest < Minitest::Test
    def test_does_it_initialize
        calculator = Calculator.new
        assert_instance_of Calculator, calculator
    end 
    def test_initial_conditions
        calculator = Calculator.new
        assert_equal 0, calculator.total
    end
    def test_can_it_add
        calculator = Calculator.new
        assert_equal 5 , calculator.addition(5)
    end
    def test_can_it_subtract
        calculator = Calculator.new
        assert_equal -7 , calculator.subtraction(7)
    end
    def test_can_it_clear
        calculator = Calculator.new
        calculator.addition(24)
        calculator.subtraction(8)
        assert_equal 0, calculator.clear
    end
    def test_what_is_total
         calculator = Calculator.new
         calculator.addition(6)
         assert_equal 6, calculator.total
    end
    def test_add_with_subtract
        calculator = Calculator.new
        calculator.addition(24)
        calculator.subtraction(8)
        assert_equal 16 , calculator.total
    end
end
