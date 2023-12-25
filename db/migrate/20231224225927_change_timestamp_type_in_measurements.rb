class ChangeTimestampTypeInMeasurements < ActiveRecord::Migration[7.1]
  def change
    change_column :measurements, :timestamp, :datetime
  end
end
