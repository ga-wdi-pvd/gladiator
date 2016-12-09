class Arena
  attr_accessor :name

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
    count = 0
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


      if @gladiators[0].weapon == @gladiators[1].weapon
        @gladiators = []
        return @gladiators

      elsif @gladiators[0].weapon == "Spear"

          if @gladiators[1].weapon == "Trident"
            @gladiators.delete_at(0)
            return @gladiators
          elsif @gladiators[1].weapon == "Club"
            @gladiators.delete_at(1)
            return @gladiators
          end

      elsif @gladiators[0].weapon == "Trident"

          if @gladiators[1].weapon == "Spear"
            @gladiators.delete_at(1)
            return @gladiators
          elsif @gladiators[1].weapon == "Club"
            @gladiators.delete_at(0)
            return @gladiators
          end

      end# if weapon

    end#if 0
  end#def fight

end#class Arena
