=begin
  Create a class MyCar
  Instance variables: year, color, model, speed (set to 0 on init)
  create instance methods to accelerate, brake, and shut off (and start?) the car.
=end

class MyCar

  attr_accessor :year, :color, :model, :speed, :engine_running
  

  def initialize(year, color, model)
    self.year = year
    self.color = color
    self.model = model
    self.speed = 0
    self.engine_running = false
  end

  def info
    if engine_running
      "Your #{year} #{color} #{model} is going #{speed} mph."
    else
      "Your #{year} #{color} #{model} is not running."
    end
  end

  def start
    if engine_running
      puts "#{model} is already started"
    else
      engine_running = true
    end
  end

  def turn_off
    if speed != 0
      puts "Stop before turning off the #{name}."
    elsif !engine_running
      puts "The #{name} is already off."
    else
      engine_running = true
    end
  end

  def accelerate(mph)
    case speed
    when (0..100) then self.speed += mph
    else puts "You're already going #{speed}. Can't go any faster."
    end
  end

  def brake
    if speed < 10
      self.speed = 0
    else
      self.speed -= 10
    end
  end
end


chevy = MyCar.new('1968', 'black', 'chevelle')
puts chevy.info
chevy.engine_running = true
puts chevy.info
chevy.accelerate(10)
puts chevy.info
chevy.brake
puts chevy.info