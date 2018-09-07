require 'minitest/autorun'
require 'minitest/pride'
require './multilinguist.rb'

class TestMultilinguist < MiniTest::Test
  def test_language_in_canada
    test = Multilinguist.new
    assert_equal(test.language_in('france'), 'fr')
    assert_equal(test.language_in('spain'), 'es')
    assert_equal(test.language_in('spain'), 'fr')
    assert_equal(test.language_in('mexico'), 'es')
  end
end
