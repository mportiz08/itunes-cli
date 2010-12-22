require 'helper'

class TestItunesCli < Test::Unit::TestCase
  should "have the correct version listed" do
    assert_equal "0.1.0", ItunesCLI::VERSION
  end
end
