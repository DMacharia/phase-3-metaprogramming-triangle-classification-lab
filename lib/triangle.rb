require "pry"
class Triangle
    attr_accessor :length, :width, :hypotenuse
    
    def initialize(length, width, hypotenuse)
        @length = length
        @width = width
        @hypotenuse = hypotenuse
    end
    
    def kind
        sum1 = self.length + self.width
        sum2 = self.length + self.hypotenuse
        sum3 = self.width + self.hypotenuse

        if self.length <= 0 || self.width <= 0 || self.hypotenuse <= 0 || sum1 <= self.hypotenuse || sum2 <= self.width || sum3 <= self.length
            raise TriangleError
        elsif self.length == self.width && self.width == self.hypotenuse && self.length != 0
            return :equilateral
        elsif self.length==self.width || self.length==self.hypotenuse || self.width == self.hypotenuse
            return :isosceles
        else
            return :scalene
        end
    end

    class TriangleError < StandardError
        def message
            "This is not a triangle"
        end
    end
end

 triangle1 = Triangle.new(10, 2, 3)
 binding.pry
