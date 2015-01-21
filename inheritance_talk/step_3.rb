class OrangeTree
  attr_reader :age, :height

  def initialize(args)
    args = defaults.merge(args)
    @age = args[:age]
    @height = args[:height]
    @fruits = args[:fruits]
    @dies_at = args[:dies_at]
    @bears_fruit_at = args[:bears_fruit_at]
    @annual_yield = args[:annual_yield]
    @growth_rate = args[:growth_rate]
  end

  def defaults
    {age: 0, height: 0, fruits: [],
      dies_at: 50, bears_fruit_at: 5,
      annual_yield: 5, growth_rate: 3}
  end


  def age!
    @age += 1
    @height += @growth_rate
    if @age >=@bears_fruit_at && @age <=@dies_at

      until @oranges.length >= rand(1..@annual_yield)
        @oranges << Orange.new(rand(1..@annual_yield))
      end
    end
  end

  def dead?
    @age >= @dies_at ? true  : false
  end

  def any_fruit?
    @oranges.any?
  end

  def pick_a_fruit!
    raise NoOrangesError, "This tree has no #{@product}s" unless self.any_fruit?
    @oranges.pop
    end

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

tree_test = OrangeTree.new({})
test_transplant = OrangeTree.new({age: 3, height: 8})