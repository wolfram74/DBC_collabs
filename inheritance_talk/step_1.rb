class OrangeTree
  attr_reader :age, :height

  def initialize
    @age = 1
    @height = 3
    @oranges = []
  end

  # Ages the tree one year
  def age!
    @age += 1
    @height += 3
    if @age >=6 && @age <=60
      until @oranges.length >= rand(1..20)
        @oranges << Orange.new(rand(1..5))
      end
    end
  end

  def dead?
    @age >= 60 ? true  : false
  end

  # # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_oranges?
    if @oranges.length > 0
      return true
    end
  end

  # # Returns an Orange if there are any
  # # Raises a NoOrangesError otherwise
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?
    @oranges.pop
  end

end

class Orange
  attr_reader :diameter
  # Initializes a new Orange with diameter +diameter+
  def initialize(diameter)
    @diameter = diameter
  end
end

tree_test = OrangeTree.new()
