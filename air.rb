class Air < Transportation
  attr_accessor :meet_at_the_airport

  @@air_array = []
  @@count = 0

  def initialize(departure_point, arrival_point, distance, cost, meet_at_the_airport)
    super(departure_point, arrival_point, distance, cost)
    @meet_at_the_airport = meet_at_the_airport
    @@air_array << self
    @@count += 1
  end

  def self.array
    @@air_array
  end

   def self.count
    @@count
  end

  def calculation
    base_price = super
    base_price + meet_at_the_airport
  end

  def self.general_info
    cost = []
    @@air_array.each do |obj|
      cost.push(obj.calculation)
    end
    puts "Most expensive Air transportation cost: #{cost.max}"
    puts "Most chipest Air transportation cost: #{cost.min}"
    puts "The amount of cost for Air transportation: #{cost.sum}"
  end

  def self.display_array
    @@air_array.each_with_index do |obj, i|
      puts "Object index #{i},
            cost: #{obj.calculation}
            details: Departure point #{obj.departure_point}, arrival_point #{obj.arrival_point}, distance #{obj.distance}, cost #{obj.cost}, meet_at_the_airport #{obj.meet_at_the_airport}"
    end
  end
end
