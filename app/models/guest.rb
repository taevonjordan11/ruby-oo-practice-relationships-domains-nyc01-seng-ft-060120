class Guest

  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def listings
    Trip.all.select do |ele|
      ele.guest == self
    end
  end

  #Needs Refactoring
  def self.pro_traveller

  end

  def self.find_all_by_name(name)
    self.all.select do |ele|
      ele.name == name
    end
  end

end
