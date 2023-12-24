require 'csv'

module ImportData
  CSV_FILES = ["db/csv_files/20211101_B3D54FD00007B2.csv","db/csv_files/20211101_B3D54FD000088A.csv","db/csv_files/20211101_B3D54FD000088F.csv"]

  def self.import_csv(file_path)
    CSV.foreach(file_path, headers: true) do |row|
      Measurement.create!(
        timestamp: row['@timestamp'],
        measure_type: row['measure_type'],
        measure_float: row['measure_float'],
        room_name: row['room_name']
      )
    end
  end
end

ImportData::CSV_FILES.each do |csv_file|
  ImportData.import_csv(csv_file)
end
