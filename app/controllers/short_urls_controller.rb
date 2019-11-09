class ShortUrlsController < ApplicationController
  def show
    @url = Url.find_by(short_url: params[:short_url])
    redirect_to @url.long_url
  end
end
