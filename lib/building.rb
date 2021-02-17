class Building
  attr_reader :units,
              :renters

  def initialize
    @units = []
    @renters = []
  end

  def add_unit(unit_instance)
    @units << unit_instance
  end

  def add_renter(renter_instance)
    @renters << renter_instance.name
  end
end
