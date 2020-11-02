class Gym
  attr_reader :name
  attr_accessor :membership
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def members
    Membership.all.select {|mem| mem.gym == self}
  end

  def lifters
    members.map {|mem| mem.lifter}
  end

  def lifter_names
    lifters.map {|lifter| lifter.name}
  end

  def lift_total
    lifters.sum {|lifter| lifter.lift_total}
  end

end
