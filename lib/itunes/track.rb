module Itunes
  class Track
    attr_reader :title, :artist, :album
    
    def initialize(info)
      @title = info[:title]
      @artist = info[:artist]
      @album = info[:album]
    end
    
    def to_s
      "song:\t#{@title}\nartist:\t#{@artist}\nalbum:\t#{@album}"
    end
  end
end
