class Listing
  attr_reader :city
  @@all = []
  def initialize(city)
    @city = city
    @@all << self
  end
  def self.all
    @@all
  end

  def guests
    Trip.all.select do |ele|
      ele.listing == self
    end
  end

  def trip_count
    guests.count
  end

  def self.find_all_by_city(city)
    self.all.select do |ele|
      ele.city ==  city
    end
  end

  def self.most_popular
    trips = []
     Trip.all.each do |trip_instances|
      trips << trip_instances.listing
    end
    freq = trips.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    trips.max_by { |v| freq[v] }
  end


end
