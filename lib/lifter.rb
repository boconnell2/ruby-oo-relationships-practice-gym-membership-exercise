class Lifter
  attr_reader :name, :lift_total
  attr_accessor :membership
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|mem| mem.lifter == self}
  end

  def all_gyms
    memberships.map {|mem| mem.gym}
  end

  def total_cost
    memberships.sum {|mem| mem.cost}
  end

  def sign_up(gym, cost)
    Membership.new(gym, self, cost)
  end

end
