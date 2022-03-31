class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    count == 0
  end

  def count
    @candies.count
  end
end
