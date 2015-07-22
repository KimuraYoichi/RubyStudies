require 'test/unit'
require "./lib/stock"

class Test_unit_stock < Test::Unit::TestCase
  def stock_test
    stock = Stock.new(8604,:t, 100)
    assert_equal(8604,:t, 100)
  end
end
