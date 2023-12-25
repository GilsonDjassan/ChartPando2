class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @measurements = Measurement.all.order(:timestamp)
    @measure_types = @measurements.pluck(:measure_type).uniq
    @room_names = @measurements.pluck(:room_name).uniq
  end
end
