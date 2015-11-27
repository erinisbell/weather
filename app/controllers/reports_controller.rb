require 'weather_client'
class ReportsController < ApplicationController

  def index
  end

  def new
  report = Report.new
  end


  def show
     client = Weather::Client.new(params[:id])
     @conditions = client.conditions
     @sun = client.sun
     @tendayforecast = client.tendayforecast
     @alerts = client.alerts
     @hurricanes = client.hurricanes
  end
end
