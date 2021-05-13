class Railway < Transportation
  attr_accessor :linens

  @@railway_array = []
  @@count = 0

  def initialize(departure_point, arrival_point, distance, cost, linens)
    super(departure_point, arrival_point, distance, cost)
    @linens = linens
    @@railway_array << self
    @@count += 1
  end

  def self.array
    @@railway_array
  end

  def self.count
    @@count
  end

  def calculation
    base_price = super
    base_price + linens
  end

  def self.general_info
    cost = []
    @@railway_array.each_with_index do |obj|
      cost.push(obj.calculation)
    end
    puts "Most expensive Railway transportation cost: #{cost.max}"
    puts "Most chipest Railway transportation cost: #{cost.min}"
    puts "The amount of cost for Railway transportation: #{cost.sum}"
  end

  def self.display_array
    @@railway_array.each_with_index do |obj, i|
      puts "Object index #{i},
            cost: #{obj.calculation}
            details:Departure point #{obj.departure_point}, arrival_point #{obj.arrival_point}, distance #{obj.distance}, cost #{obj.cost}, linens #{obj.linens}"
    end
  end
end
