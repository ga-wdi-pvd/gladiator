class Arena
  attr_accessor :name

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def gladiators
    return @gladiators
  end

  def add_gladiator(him)
    if @gladiators.length < 2
      return @gladiators.push(him)
    end
  end

  def fight
    if @gladiators.length == 0
      return @gladiators
    elsif @gladiators.length == 1
      return @gladiators
    elsif @gladiators.length == 2
      if @gladiators[1].weapon == "Spear"
        return @gladiators[1]
      end
        
    end
  end

end
