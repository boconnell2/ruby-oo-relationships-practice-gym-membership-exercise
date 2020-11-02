class Membership
  attr_reader :cost
  attr_accessor :gym, :lifter
  @@all = []

  def initialize(gym, lifter, cost)
    @gym = gym
    @lifter = lifter
    @cost = cost
    @@all << self
  end

  def self.all
    @@all
  end

end
