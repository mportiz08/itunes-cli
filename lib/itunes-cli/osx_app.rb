require 'optitron'

module ItunesCLI
  class OsxApp < Optitron::CLI   
    include ItunesCLI
    
    desc "displays the current version of itunes-cli"
    def version
      puts "#{NAME} v#{VERSION}\nby #{AUTHOR}"
    end
    
    desc "Shows information about the current track"
    def show
      player = OsxPlayer.new
      puts player.current
    end
    
    desc "Plays the current track"
    def play
      player = OsxPlayer.new
      player.play
    end
    
    desc "Pauses the current track"
    def pause
      player = OsxPlayer.new
      player.pause
    end
    
    desc "Stop the current track"
    def stop
      player = OsxPlayer.new
      player.stop
    end
    
    desc "Plays the previous track"
    def prev
      player = OsxPlayer.new
      player.prev
    end
    
    desc "Plays the next track"
    def next
      player = OsxPlayer.new
      player.next
    end
  end
end
