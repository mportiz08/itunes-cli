require 'rubygems'

module ItunesCLI
  VERSION = "0.1.0"
  AUTHOR  = "Marcus Ortiz"
  NAME    = "itunes-cli"
  
  def windows?
    return false if RUBY_PLATFORM !~ /cygwin|mswin|mingw|bccwin|wince|emx/
  end
end

dir = File.expand_path(File.dirname(__FILE__))
require File.join(dir, 'itunes-cli', 'track')

if RUBY_PLATFORM =~ /cygwin|mswin|mingw|bccwin|wince|emx/
  require File.join(dir, 'itunes-cli', 'win_player')
  require File.join(dir, 'itunes-cli', 'win_app')
else
  require File.join(dir, 'itunes-cli', 'osx_player')
  require File.join(dir, 'itunes-cli', 'osx_app')
end
