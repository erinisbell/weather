class Report < ActiveRecord::Base

  def new
  report = Report.new
  end

  private
  def report_params
    params.require(:report).permit(:code)
  end
end
