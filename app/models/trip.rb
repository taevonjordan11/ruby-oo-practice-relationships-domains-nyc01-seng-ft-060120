class Trip
  @@all = []

  attr_accessor :listing, :guest

  def initialize(listing, guest)
    @guest = guest
    @listing = listing
    @@all << self
  end

  def self.all
    @@all
  end
end
