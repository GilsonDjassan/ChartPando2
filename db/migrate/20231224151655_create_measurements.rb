class CreateMeasurements < ActiveRecord::Migration[7.1]
  def change
    create_table :measurements do |t|
      t.date :timestamp
      t.string :measure_type
      t.float :measure_float
      t.string :room_name

      t.timestamps
    end
  end
end
