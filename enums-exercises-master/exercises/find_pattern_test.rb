gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FindPatternTest < Minitest::Test

  def test_find_first_seven_letter_word
    words = ["capricious", "berry", "unicorn", "bag", "apple", "festering", "pretzel", "pencil"]
    found = nil
    word = words.find{|x|x.length == 7}
    found = word
  
    assert_equal "unicorn", found
  end

  def test_no_waldo
    words = ["scarf", "sandcastle", "flag", "pretzel", "crow", "key"]
    found = nil
    word = words.find{|x|x.include?("waldo")}
     found = word
    
    assert_equal nil, found
  end

  def test_find_waldo
    
    words = ["noise", "dog", "fair", "house", "waldo", "bucket", "fish"]
    found = nil
    word = words.find{|x|x.include?("waldo")}
    found = word
    assert_equal "waldo", found
  end

  def test_cannot_find_3_letter_words
    found = nil
    words = ["piglet", "porridge", "bear", "blueberry"]
    word = words.find{|x|x.length == 3}
    found = word

    assert_equal nil, found
  end

  def test_find_13
    found = nil
    numbers = [2, 13, 19, 8, 3, 27]
    number = numbers.find{|x|x == 13}
    found = number

    assert_equal 13, found
  end

  def test_find_first_even_number
    
    found = nil
    numbers = [3, 7, 13, 11, 10, 2, 17]
    number = numbers.find{|x|x.even?}
    found = number

    assert_equal 10, found
  end

  def test_find_first_multiple_of_3
    
    found = nil
    numbers = [2, 8, 9, 27, 24, 5]
    number = numbers.find{|x|x % 3 == 0}
    found = number

    assert_equal 9, found
  end

  def test_find_first_word_starting_with_q
    found = nil
    words = ["weirdo", "quill", "fast", "quaint", "quitter", "koala"]
      word = words.find{|w|w.include?("q")}
      found = word   
      
    
    assert_equal "quill", found
  end

  def test_find_first_word_ending_with_er
    found = nil
    words = ["biggest", "pour", "blight", "finger", "pie", "border"]
    word = words.find{|x|x.include?("er")}
    found = word
    assert_equal "finger", found
  end

  def test_find_first_number_greater_than_20
    found = nil
    numbers = [1, 8, 19, 21, 29, 31, 34]
    number = numbers.find{|x|x > 20}
    found = number
    assert_equal 21, found
  end

end