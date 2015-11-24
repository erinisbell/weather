require 'weather_client'

class ReportsController < ApplicationController

  def index
  end

  def show
     client = Weather::Client.new(params[:id])
     @conditions = client.conditions
  end
end
