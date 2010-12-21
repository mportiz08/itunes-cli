module Itunes
  class Track
    attr_reader :title, :artist, :album
    
    def initialize(info)
      @title = info[:title]
      @artist = info[:artist]
      @album = info[:album]
    end
    
    def to_s
      puts "\"#{@title}\"\n#{@artist}\n#{@album}"
    end
  end
end
