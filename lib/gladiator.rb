class Gladiator
  require 'weapon'

  attr_reader :name
  def initialize(name, weapon)
    @weapon = weapon
    @name = name
  end

  def weapon
    Weapon.new(@weapon).name
  end

end
