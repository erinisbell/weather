class AddConditionsToReports < ActiveRecord::Migration
  def change
    add_column :reports, :conditions, :float
    add_column :reports, :sun, :datetime
    add_column :reports, :tendayforecast, :float
  end
end
