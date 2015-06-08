gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class NonePatternTest < Minitest::Test

  def test_none_are_broken
    
    things = ["functional", "working", "works", "fixed", "good"]
    none_broken = nil
      none_broken = things.none?{|thing| thing.include?("broken")}
        if none_broken == "broken"
          none_broken = false
        end
    assert none_broken
  end
end

  def test_double_negative
    numbers = [9, 3, 3, 7, 6, -5, 1]
    not_none_negative = true
      numbers.none?{|number| number >= 0 } 

    
    refute not_none_negative
  end

  def test_none_are_negative
    
    numbers = [9, 3, 1, 8, 3, 3, 5]
    none_negative = true
    numbers.each do |number|
      if number
    assert none_negative
  end
  end

  def test_none_shall_pass
    
    critters = ["elf", "hobbit", "dwarf", "wizard", "human"]
    # Your code goes here
    assert none_shall_pass
  end

  def test_one_or_more_shall_pass
    
    phrases = ["go", "left", "can cross", "shall pass", "must stay", "tarried"]
    # Your code goes here
    refute none_shall_pass
  end

  def test_none_even
    
    numbers = [3, 9, 15, 21, 19]
    # Your code goes here
    assert none_even
  end

end