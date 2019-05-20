require 'open-uri'

class FlatsController < ApplicationController
  before_action :set_flats

  def home
  end

  def show
    @flat = @flats.select { |f| f['id'] == params[:id].to_i }.first
  end

  private

  def set_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end
end
