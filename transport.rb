class Transport

  attr_reader :colour, :type, :fuel, :speed, :capacity

  def initialize(colour, type, fuel, speed, capacity)
    @colour = colour
    @type = type
    @fuel = fuel
    @speed = speed
    @capacity = capacity
  end

  def accelerate()

    @speed += 10
    @fuel -= 5
  end

  def deccelerate()
    until @speed == 0
      @speed -= 10
    end
  end
end

