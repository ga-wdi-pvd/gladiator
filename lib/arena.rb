class Arena
  require 'pry'
  attr_reader :name
  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  #def name
  #  @name
  #end
  #

  def gladiators
    @gladiators
  end

  def add_gladiator(gladiator)
    if @gladiators.length < 2
      @gladiators << gladiator
    end
  end

  def fight
    if @gladiators.size > 1
      # compare weapons to determine winner
      weapon1 = @gladiators[0].weapon
      weapon2 = @gladiators[1].weapon
      if weapon1 == weapon2 
        kill_all
      end
      if weapon1 == "Trident"
        if weapon2 == "Spear"
          self.kill(@gladiators[1])
        elsif weapon2 == "Club"
          self.kill(@gladiators[0])
        end
      elsif weapon1 == "Spear"
        if weapon2 == "Trident"
          self.kill(@gladiators[0])
        elsif weapon2 == "Club"
          self.kill(@gladiators[1])
        end
      else
        # ToDo why can't I take this out?
        kill_all
      end

    end
  end

  def kill(gladiator)
    @gladiators.delete(gladiator)
  end

  def kill_all
    @gladiators.each do |glad|
      self.kill(glad)
    end
  end


end
