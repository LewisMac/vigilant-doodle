require ('minitest/autorun')
require ('minitest/rg')
require_relative ('people')
require_relative ('transport')

class TestPeople < MiniTest::Test

  def setup
    @person = Person.new('Jeff', 25)
  end


  def test_person_name
    assert_equal('Jeff', @person.name)
    assert_equal(25, @person.age)
  end
end

class TestTransport < MiniTest::Test

  def setup
    @transport = Transport.new('Green','Dragon', 100, 0, 4)
  end

  def test_dragon_speed
    assert_equal(0, @transport.speed)
  end

  def test_fuel_levels
    assert_equal(100, @transport.fuel)
  end

  def test_acceleration
    @transport.accelerate()
    assert_equal(10, @transport.speed)
    assert_equal(95, @transport.fuel)
  end

  def test_decceleration
    @transport.deccelerate()
    assert_equal(0, @transport.speed)
  end
end








