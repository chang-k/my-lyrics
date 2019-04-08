class ProductsController < ApplicationController
  def index
  end

  def search
    artists = RSpotify::Artist.search(params[:artist])
    if artists.present?
      @artist = artists.first
      @albums = @artist.albums
    else
      render :index
    end
  end
end
