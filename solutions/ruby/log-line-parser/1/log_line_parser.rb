class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    line_split.last.strip
  end

  def log_level
    level = line_split.first.strip.gsub(/[^A-Z]/, '')
    level.downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end

  private

  def line_split
    @line.split(':')
  end
end
