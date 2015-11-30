require 'weather_client'
class ReportsController < ApplicationController

  def index
    if params[:id]
      redirect_to report_path(params[:id])
    else
      @reports = Report.all
    end
  end

  def new
  @report = Report.new
  end


  def show
     client = Weather::Client.new(params[:id])
     @conditions = client.conditions.join (',')
     @sun = client.sun
     @tendayforecast = client.tendayforecast
     @alerts = client.alerts
     @hurricanes = client.hurricanes
  end

  private
  def report_params
    params.require(:report).permit(:id)
  end
end
