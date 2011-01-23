module ItunesCLI
  class OsxPlayer
    attr_reader :itunes
    
    def initialize
      # TODO
    end
    
    def play
      # TODO
    end
    
    def pause
      # TODO
    end
    
    def stop
      # TODO
    end
    
    def prev
      # TODO
    end
    
    def next
      # TODO
    end
    
    def current
      Track.new({:title => track, :artist => artist, :album => album})
    end
    
    private
    
    def track
      # TODO
    end
    
    def artist
      # TODO
    end
    
    def album
      # TODO
    end
  end
end
