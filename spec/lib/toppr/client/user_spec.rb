require 'spec_helper'

describe 'User methods' do
	
	let(:user) { Toppr.user('willrax') }

	before do
    VCR.insert_cassette 'user', :record => :new_episodes
  end
 
  after do
    VCR.eject_cassette
  end

  describe 'get profile' do

	  it "must return the right profile" do
	  	user.username.should == 'willrax'
	  end

	  it "must be a hash" do
	  	user.class.should == Hashie::Mash
	  end

	end

end