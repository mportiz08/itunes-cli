require 'rainbow'

module ItunesCLI
  class Track
    attr_reader :title, :artist, :album
    
    def initialize(info)
      @title = info[:title]
      @artist = info[:artist]
      @album = info[:album]
    end
    
    def to_s
      song_label = 'song:'.foreground(:green)
      artist_label = 'artist:'.foreground(:green)
      album_label = 'album:'.foreground(:green)
      title = @title.foreground(:cyan)
      artist = @artist.foreground(:cyan)
      album = @album.foreground(:cyan)
      "#{song_label}\t#{title}\n#{artist_label}\t#{artist}\n#{album_label}\t#{album}"
    end
  end
end
