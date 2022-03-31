require 'pry'
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

  def << candy
    @candies << candy
  end

  def contains? name
    @candies.any? { |candy| candy.type == name }
  end

  def grab name
    candy = @candies.find { |candy|
      candy.type == name
    }
    @candies.delete candy
  end

  def take quantity
    taken = []
    quantity.times { taken << @candies.pop }
    return taken[0] if quantity == 1
    taken
  end
end
