class Building
  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(unit_instance)
    @units << unit_instance
  end
end
