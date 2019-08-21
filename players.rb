class Players
  attr_accessor :name, :lives
  def initialize(name, lives = 3)
    @lives = lives
    @name = name
  end

  def alive?
    @lives >= 0 
  end
end