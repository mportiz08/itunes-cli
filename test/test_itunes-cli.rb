require 'helper'

class TestItunesCli < Test::Unit::TestCase
  include ItunesCLI
  
  should "have the correct version listed" do
    assert_equal "0.0.1", version
  end
end
