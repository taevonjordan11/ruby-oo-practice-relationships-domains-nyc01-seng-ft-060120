require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

g1 = Guest.new("TJ")
g2 = Guest.new("MK")
g3 = Guest.new("JT")
g4 = Guest.new("JT")

l1 = Listing.new("New York")
l2 = Listing.new("Los Angeles")
l3 = Listing.new("Seattle")
l4= Listing.new("Seattle")

t1 = Trip.new(l1,g1)
t2 = Trip.new(l2,g2)
t3 = Trip.new(l3,g3)
t4 = Trip.new(l3,g1)
t5 = Trip.new(l3,g3)

Pry.start
