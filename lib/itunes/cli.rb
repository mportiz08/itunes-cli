require 'optitron'

module Itunes
  class CLI < Optitron::CLI
    desc "Shows information about the current track"
    def show
      player = Player.new
      puts player.current
    end
    
    desc "Plays the current track"
    def play
      player = Player.new
      player.play
    end
    
    desc "Pauses the current track"
    def pause
      player = Player.new
      player.pause
    end
    
    desc "Plays the previous track"
    def prev
      player = Player.new
      player.prev
    end
    
    desc "Plays the next track"
    def next
      player = Player.new
      player.next
    end
  end
end
