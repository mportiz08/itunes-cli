require 'win32ole'

module Itunes
  class Player
    def initialize
      @itunes = WIN32OLE.new("iTunes.Application")
    end
    
    def play
      @itunes.Play()
    end
    
    def pause
      @itunes.Pause()
    end
    
    def stop
      @itunes.Stop()
    end
    
    def prev
      @itunes.PreviousTrack()
    end
    
    def next
      @itunes.NextTrack()
    end
    
    def current
      Track.new({:title => track, :artist => artist, :album => album})
    end
    
    private
    
    def track
      @itunes.CurrentTrack.name
    end
    
    def artist
      @itunes.CurrentTrack.Artist
    end
    
    def album
      @itunes.CurrentTrack.Album
    end
  end
end
