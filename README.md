# Toppr [![Build Status](https://secure.travis-ci.org/willrax/toppr.png?branch=master)][travis]

[travis]: http://travis-ci.org/willrax/octokit

A simple ruby wrapper for the desktoppr.co API.

## Installation

    $ gem install toppr

## Examples

Each request returns a hash with method access.

### Request a users profile

		Toppr.user('willrax')
		=> #<Hashie::Mash created_at="2012-06-20T11:57:41Z" followers_count=2 following_count=0 lifetime_member=false name="willrax" ... >

### Wallpapers

You can fetch all the wallpapers on the desktoppr database
		
		Toppr.wallpapers
		
Or you can fetch a random wallpaper

		Toppr.random
		=> #<Hashie::Mash bytes=2267435 created_at="2012-07-01T04:12:40Z" height=1440 id=76285 image=#<Hashie::Mash preview=#<Hashie::Mash height=540 url="http://a.desktopprassets.com/wallpapers/bddef83d0dd366676a0c9977eecd2d06560d7231/preview_wp_2560-3.jpeg" width=960> thumb=#<Hashie::Mash height=185 url="http://a.desktopprassets.com/wallpapers/bddef83d0dd366676a0c9977eecd2d06560d7231/thumb_wp_2560-3.jpeg" width=296> url="http://a.desktopprassets.com/wallpapers/bddef83d0dd366676a0c9977eecd2d06560d7231/wp_2560-3.jpeg"> palette=[] review_state="safe" url="http://www.desktoppr.co/wallpapers/76285" user_count=6 user_id=5286 views_count=15 width=2560>

You can also add a username param to fetch either all the wallpapers that a user has in their collection or a random one.

		Toppr.wallpapers('willrax')

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
