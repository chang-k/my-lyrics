class ApplicationController < ActionController::Base
  before_action :require_rspotify

  protected

  def require_rspotify
    require 'rspotify'
    RSpotify.authenticate(ENV["CLIENT_ID"], ENV["CLIENT_SECRET"])
  end
end
