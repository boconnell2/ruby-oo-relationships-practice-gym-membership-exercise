# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
golds = Gym.new("Gold's")
pf = Gym.new("Planet Fitness")
crunch = Gym.new("Crunch")

l1 = Lifter.new("Ted", 300)
l2 = Lifter.new("Rochelle", 1000)
l3 = Lifter.new("Jamila", 100)
l4 = Lifter.new("Brendan", 2)

mem1 = Membership.new(golds, l1, 30)
mem2 = Membership.new(golds, l2, 30)
mem3 = Membership.new(pf, l2, 30)
mem4 = Membership.new(pf, l4, 30)

binding.pry

puts "Gains!"
