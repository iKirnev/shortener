class ShortController < ApplicationController
  def show
    key = params[:id]
    url   = Short.find(key)
    redirect_to url, status: :moved_permanently
  end
end
