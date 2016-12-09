class Gladiator
  attr_accessor :name

  def initialize(name, weapon)
  @name = name
  @weapon = weapon
  end

  def weapon
    return @weapon
  end
  
end
