class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'

    @url = "https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?start=1&limit=10&convert=USD&CMC_PRO_API_KEY=1e52780b-7036-43cd-be95-524489cf9edd"
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    @my_coins = ['BTC', 'XRP',]
  end

  def about
    @about_Rory = "33 year old"
  end

  def search
    @url = "https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?start=1&limit=25&convert=USD&CMC_PRO_API_KEY=1e52780b-7036-43cd-be95-524489cf9edd"
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @search_coin = JSON.parse(@response)

    @symbol = params[:query]

    if @symbol
      @symbol = @symbol.upcase
    end

    if @symbol == ""
      @symbol = "nothing punk"
    end

  end

  private

  def query
    # params.permit(:query)
  end

end
