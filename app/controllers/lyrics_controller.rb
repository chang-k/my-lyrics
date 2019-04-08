class LyricsController < ApplicationController
  def index
    @album = RSpotify::Album.find(params[:album_id])
    @album_id = params[:album_id]
    @album_name = params[:album_name]
    @artist_name = params[:artist_name]
    @tracks = @album.tracks
  end
end
