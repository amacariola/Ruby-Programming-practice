#!/usr/bin/ruby

# how to use a global variable

puts "Global variables"

$global_variable = 20
class ClassOne
    def print_global
        puts "Class One prints the global variable"
        puts "This is the global variable: #$global_variable"
    end
end

class ClassTwo
    def print_global
        puts "Class Two also prints it"
        puts "This is the global variable: #$global_variable"
    end
end

class1obj = ClassOne.new
class1obj.print_global
class2obj = ClassTwo.new
class2obj.print_global

# Instance variables

puts "Instance variables"

class Customer 
    def initialize(id, name, addr)
        @cust_id = id
        @cust_name = name
        @cust_addr = addr
    end

    def display_details
        puts "Customer id: #@cust_id"
        puts "Customer name: #@cust_name"
        puts "Customer address: #@cust_addr"
    end
end


# call the class and create new object
# data that will be passed

cust1 = Customer.new("1", "Haruna", "Japan")
cust2 = Customer.new("2","Hiei", "Japan")

# call methods

puts "Display details of cust1"
cust1.display_details
puts "Display details of cust2"
cust2.display_details


#usage of class variables

puts "Class Variables"

class Vehicle 
    @@no_of_vehicles = 0

    def initialize(id,name,brand)
        @car_id = id
        @car_name = name
        @car_brand = brand
    end


    def display_details
        puts "Car id: #@car_id"
        puts "Car name: #@car_name"
        puts "Car Brand: #@car_brand"
    end

    def total_cars
        @@no_of_vehicles += 1
        puts "Total Vehicles: #@@no_of_vehicles"
    end

end

car1 = Vehicle.new("1","Skyline GT-R","Nissan")
car2 = Vehicle.new("2","RX-7","Mazda")

total1 = car1.total_cars
total2 = car2.total_cars


# constants

class Example
    VAR1 = 100
    VAR2 = 200

    def show
        puts "Constants in Ruby"
        puts "This is constant 1: #{VAR1}"
        puts "This is constant 2: #{VAR2}"
    end

end

constant = Example.new() # create the object constant
constant.show  # call the show method