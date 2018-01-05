=begin
  Create a class MyCar
  Instance variables: year, color, model, speed (set to 0 on init)
  create instance methods to accelerate, brake, and shut off (and start?) the car.
=end

class MyCar

  attr_accessor :color
  attr_reader :year
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @engine_running = false
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
end


chevy = MyCar.new('1968', 'black', 'chevelle')
chevy.color = 'red'
puts chevy.color
puts chevy.year
