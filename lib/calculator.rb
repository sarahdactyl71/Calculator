#Calculator Homework

class Calculator 

attr_reader :total

    def initialize
        @total = 0
    end
    def addition(x)
        @total += x
    end
    def subtraction(x)
        @total -= x
    end
    def clear
        @total = 0
    end    
end