require 'minitest/autorun'
require 'minitest/pride'
require './lib/building'
require './lib/apartment'
require './lib/renter'

class BuildingTest < Minitest::Test
  def test_it_exists
    building = Building.new
    assert_instance_of Building, building
  end

  def test_it_has_attributes
    building = Building.new
    assert_equal [], building.units
  end

  def test_add_unit
    building = Building.new
    assert_equal [], building.units
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(unit1)
    building.add_unit(unit2)
    assert_equal [unit1, unit2], building.units
  end

  def test_add_renter
    building = Building.new
    assert_equal [], building.units
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(unit1)
    building.add_unit(unit2)
    building.units
    assert_equal [], building.renters

    renter1 = Renter.new("Aurora")

    unit1.add_renter(renter1)
    actual = building.renters


    assert_equal ["Aurora"], actual
    renter2 = Renter.new("Tim")
    unit2.add_renter(renter2)
    #assert_equal ["Aurora", "Tim"], building.renters
  end
end
