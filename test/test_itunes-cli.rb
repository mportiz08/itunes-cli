require 'helper'

class TestItunesCli < Test::Unit::TestCase
  should "have the correct version listed" do
    assert_equal "0.0.1", ItunesCLI::VERSION
  end
end
