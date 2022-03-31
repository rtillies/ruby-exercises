class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    @candies.count == 0
  end 
end
