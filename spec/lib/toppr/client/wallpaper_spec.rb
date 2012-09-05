require 'spec_helper'

describe "Wallpaper methods" do

	before do
    VCR.insert_cassette 'wallpapers', :record => :new_episodes
  end
 
  after do
    VCR.eject_cassette
  end

  describe 'get all wallpapers' do

  	it "must return data" do
  		wallpapers = Toppr.wallpapers
  		wallpapers.length.should == 20
  	end

  	it "must return data when paginated" do
  		wallpapers = Toppr.wallpapers(page=2)
  		wallpapers.size.should == 20
  	end

  	it "must return date about user wallpapers" do
  		wallpapers = Toppr.wallpapers('willrax')
  		wallpapers.size.should == 20
  	end

  end

  describe "get random wallpapers" do

  	it "must return a random wallpaper" do
  		wallpaper = Toppr.random
  		wallpaper.size.should == 12
  	end

  	it "must return a random wallpaper from user" do
  		wallpaper = Toppr.random('willrax')
  		wallpaper.size.should == 12
  	end

  end

end