require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'redgreen'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'itunes-cli'
begin
  require 'itunes-cli/win_player'
rescue LoadError
  puts 'rescued'
end

class Test::Unit::TestCase
end
