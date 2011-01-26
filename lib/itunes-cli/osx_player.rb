module ItunesCLI
  class OsxPlayer
    attr_reader :itunes
    
    def play
      osa 'play'
    end
    
    def pause
      osa 'pause'
    end
    
    def stop
      osa 'stop'
    end
    
    def prev
      osa 'previous track'
    end
    
    def next
      osa 'next track'
    end
    
    def current
      Track.new({:title => track, :artist => artist, :album => album})
    end
    
    private
    
    def osa(action)
      %x(osascript -e 'tell app \"iTunes\" to #{action}').rstrip
    end
    
    def track
      osa "return name of current track"
    end
    
    def artist
      osa "return artist of current track"
    end
    
    def album
      osa "return album of current track"
    end
  end
end
