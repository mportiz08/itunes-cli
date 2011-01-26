require 'helper'

class TestWinPlayer < Test::Unit::TestCase
  include ItunesCLI
  
  def setup
    @player = WinPlayer.new
    @track = @player.current
  end
  
  should "respond to the play method" do
    assert_respond_to @player, :play
  end
  
  should "respond to the pause method" do
    assert_respond_to @player, :pause
  end
  
  should "respond to the stop method" do
    assert_respond_to @player, :stop
  end
  
  should "respond to the prev method" do
    assert_respond_to @player, :prev
  end
  
  should "respond to the next method" do
    assert_respond_to @player, :next
  end
  
  should "return the current track" do
    assert_equal @track.title, @player.current.title
    assert_equal @track.artist, @player.current.artist
    assert_equal @track.album, @player.current.album
    assert_equal @track.to_s, @player.current.to_s
  end
end
