puts "Object Oriented Ruby"

class Rectangle

    @@count = 0

    def initialize(w,h)
        @width, @height = w, h
        @@count += 1  # for every box object created, one is added to this
    end
   
    # instance methods
    def getArea
        @width * @height
    end

    
    # class method
    def self.box_count
        puts "Rectangle count is: #{@@count}"
    end

    
    private

    # accessor methods
    def showWidth
        @width
    end

    def showHeight
        @height
    end

    # setter methods
    def setWidth=(value)
        @width = value
    end

    def setHeight=(value)
        @height = value
    end
    
    protected

    # the to_s method
    def to_s
        "(w:#@width,h:#@height)"
    end

end

# call the method

object = Rectangle.new(100,200)
puts object.showHeight # access the accessor methods
puts object.showWidth  # access the accessor methods
w = object.setWidth = 20
h = object.setHeight = 30
# use the setter methods
puts "setter width is #{w}"
puts "setter height is #{h}"

# use the getArea instance
puts "The area is: #{object.getArea}"

# use the class method box_count
Rectangle.box_count
# use the to_s method
puts object