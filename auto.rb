class Auto < Transportation
  attr_accessor :cargo_tracking

  @@auto_array = []
  @@count = 0

  def initialize(departure_point, arrival_point, distance, cost, cargo_tracking)
    super(departure_point, arrival_point, distance, cost)
    @cargo_tracking = cargo_tracking
    @@auto_array << self
    @@count += 1
  end

  def self.array
    @@auto_array
  end

  def self.count
    @@count
  end

  def calculation
    base_price = super
    base_price + cargo_tracking
  end

  def self.general_info
    cost = []
    @@auto_array.each_with_index do |obj|
      cost.push(obj.calculation)
    end
    puts "Most expensive Auto transportation cost: #{cost.max}"
    puts "Most chipest Auto transportation cost: #{cost.min}"
    puts "The amount of cost for Auto transportation: #{cost.sum}"
  end

  def self.display_array
    @@auto_array.each_with_index do |obj, i|
      puts "Object index #{i},
            cost: #{obj.calculation}
            details: Departure point #{obj.departure_point}, arrival_point #{obj.arrival_point}, distance #{obj.distance}, cost #{obj.cost}, cargo_tracking #{obj.cargo_tracking}"
    end
  end
end
