require "bundler/setup"
require "minitest/unit"
require "minitest/autorun"
require "rr"

class MiniTest::Unit::TestCase
  include RR::Adapters::MiniTest
end

class FooTest < MiniTest::Unit::TestCase
  def test_foo
    o = mock!
    o.expects(:foo)
  end
end
