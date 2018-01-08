module Towable

  def can_tow?(pounds)
    pounds < 2000
  end
end

class Vehicle

  @@number_of_vehicles = 0
  attr_accessor :color, :model
  attr_reader :year
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @engine_running = false
    @@number_of_vehicles += 1
  end

  def self.gas_milieage(miles, gallons)
    "Gas mileage is #{miles / gallons} miles per gallon"
  end

  def start
    if engine_running
      puts "#{model} is already started"
    else
      engine_running = true
    end
  end

  def shutdown
    current_speed = 0
    puts "You have shut down the #{name}."
  end

  def speed_up(mph)
    @current_speed += mph
    puts "You accelerate by #{mph} mph."
  end

  def current_speed
    puts "You are going #{@current_speed} mph."
  end

  def brake(mph)
    @current_speed -= mph
    puts "You push the brake and declerate by #{mph}. You are now going #{@current_speed} mph."
  end

  def spraypaint(color)
    self.color = color
    puts "You've painted your car #{self.color}."
  end

  def self.vehicles_created
    @@number_of_vehicles
  end

  def age
    "You car is #{years_old} years old"  
  end
  
  private

  def years_old
    Time.now.year - year
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{color} #{year} #{model}"
  end
end


class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
  include Towable

  def to_s
    "My truck is a #{color} #{year} #{model}"
  end
end

car = MyCar.new(2004, "white", "Ford Focus")
truck = MyTruck.new(2002, "blue", "Nissan Xterra")

puts car
puts truck

p truck.can_tow?(3000)
puts Vehicle.vehicles_created

puts "Truck Lookup"
puts MyTruck.ancestors

puts "Car Lookup"
puts MyCar.ancestors
 
puts car.age
puts truck.age