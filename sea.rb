class Sea < Transportation
  attr_accessor :drowning_insurance

  @@sea_array = []
  @@count = 0

  def initialize(departure_point, arrival_point, distance, cost, drowning_insurance)
    super(departure_point, arrival_point, distance, cost)
    @drowning_insurance = drowning_insurance
    @@sea_array << self
    @@count += 1
  end

  def self.array
    @@sea_array
  end

  def self.count
    @@count
  end

  def calculation
    base_price = super
    base_price + drowning_insurance
  end

  def self.general_info
    cost = []
    @@sea_array.each_with_index do |obj|
      cost.push(obj.calculation)
    end
    puts "Most expensive Sea transportation cost: #{cost.max}"
    puts "Most chipest Sea transportation cost: #{cost.min}"
    puts "The amount of cost for Sea transportation: #{cost.sum}"
  end

  def self.display_array
    @@sea_array.each_with_index do |obj, i|
      puts "Object index #{i},
            cost: #{obj.calculation},
            details: Departure point #{obj.departure_point}, arrival_point #{obj.arrival_point}, distance #{obj.distance}, cost #{obj.cost}, drowning_insurance #{obj.drowning_insurance}"
    end
  end
end
