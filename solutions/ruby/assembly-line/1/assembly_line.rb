class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    @speed * 221 * production_rate
  end

  def production_rate
    return 1 if @speed <= 4
    return 0.9 if @speed <= 8
    return 0.8 if @speed == 9
    return 0.77 if @speed == 10

    raise "Invalid Speed #{ @speed }"
  end

  def working_items_per_minute
    production_rate_per_hour.floor / 60
  end
end
