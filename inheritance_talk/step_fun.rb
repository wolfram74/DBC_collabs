class FruitTree
  attr_reader :age, :height, :bears_fruit_at

  def initialize (args)
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

      until @fruits.length >= rand(1..@annual_yield)
        @fruits << Fruit.new(rand(1..@annual_yield))
      end
    end
  end

  def dead?
    @age >= @dies_at ? true  : false
  end

  def any_fruit?
    @fruits.any?
  end

  def pick_a_fruit!
    raise NoFruitsError, "This tree has no #{@product}s" unless self.any_fruit?
    @fruits.pop
    end
end

class Fruit
  attr_reader :diameter
  def initialize(diameter)
    @diameter = diameter
  end
end

class AppleTree < FruitTree
  def defaults
    {age: 0, height: 0, fruits: [],
      dies_at: 90, bears_fruit_at: 30,
      annual_yield: 15, growth_rate: 2,
      product: Apple}
  end
end

class OrangeTree < FruitTree
  def defaults
    {age: 0, height: 0, fruits: [],
      dies_at: 50, bears_fruit_at: 5,
      annual_yield: 5, growth_rate: 3,
      product: Orange}
  end

end

class PearTree < FruitTree
  def defaults
    {age: 0, height: 0, fruits: [],
      dies_at: 75, bears_fruit_at: 10,
      annual_yield: 10, growth_rate: 2,
      product: Pear}
  end
end

class Apple < Fruit
end

class Orange < Fruit
end

class Pear < Fruit
end


test_tree = FruitTree.new({})

class Money <Fruit
  def initialize (integer)
    @value = integer
  end
end
money_tree = FruitTree.new({bears_fruit_at: 3, product: Money, annual_yield: 10})

class Book <Fruit
  def initialize (integer)
    @pages = integer*100
  end
end
book_tree = FruitTree.new({bears_fruit_at: 14, product: Book, annual_yield: 3})
