class Gladiator
  attr_accessor :name

  def initialize(name, last_name)
  @name = name
  @last_name = last_name
  @weapon = 'Sword'
  end

  def weapon
    return @weapon
  end
end
