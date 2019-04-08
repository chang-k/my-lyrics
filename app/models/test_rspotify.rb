require 'rspotify'

RSpotify.authenticate("f5cebfd7e447473d9f9330a751353c53", "0041095f320647919cd6fff8fd5b46ea")

track = RSpotify::Track.search('Dream on')

puts track
