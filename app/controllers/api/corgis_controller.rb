class Api::CorgisController < ApplicationController
  def index
    @resp = Faraday.get 'https://api.giphy.com/v1/gifs/search' do |req|
      req.params['api_key'] = 'ujkGOKu3RYVCxbFOnMhK41XcYq6jSLmM'
      req.params['q'] = 'corgis'
    end
    body_hash = JSON.parse(@resp.body)
    @corgis = body_hash["data"]
    render json: @corgis
  end
end
