class Transportation
  attr_accessor :departure_point, :arrival_point, :distance, :cost

  @@all = []

  def initialize(departure_point, arrival_point, distance, cost)
    @departure_point = departure_point
    @arrival_point = arrival_point
    @distance = distance
    @cost = cost
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    "Count of all transportation: #{@@all.length}"
  end

  def calculation
    cost * 1.2
  end
end
