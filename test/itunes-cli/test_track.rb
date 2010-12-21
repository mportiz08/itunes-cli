require 'helper'

class TestTrack < Test::Unit::TestCase
  include ItunesCLI
  
  def setup
    @track = Track.new({
      :title => "Act Appalled",
      :artist => "Circa Survive",
      :album => "Juturna"
    })
  end
  
  should "have the correct song title" do
    assert_equal "Act Appalled", @track.title
  end
  
  should "have the correct artist of song" do
    assert_equal "Circa Survive", @track.artist
  end
  
  should "have the correct album of song" do
    assert_equal "Juturna", @track.album
  end
  
  should "display information about the current track correctly" do
    assert_equal "song:\tAct Appalled\nartist:\tCirca Survive\nalbum:\tJuturna", @track.to_s
  end
end
