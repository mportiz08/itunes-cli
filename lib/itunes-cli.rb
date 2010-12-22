module ItunesCLI
  VERSION = "0.1.0"
  AUTHOR  = "Marcus Ortiz"
  NAME    = "itunes-cli"
end

dir = File.expand_path(File.dirname(__FILE__))
require File.join(dir, 'itunes-cli', 'track')
require File.join(dir, 'itunes-cli', 'player')
require File.join(dir, 'itunes-cli', 'app')
