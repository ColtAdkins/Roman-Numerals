class Calculator
    attr_accessor :num1,:num2
    def perform_add(a, b)
        @num1 + @num2
    end
    def perform_minus(a, b)
        @num1 - @num2
    end
    def perform_multiplication(a, b)
        @num1 * @num2
    end
    def perform_division(a, b)
        @num1 / @num2
    end
end