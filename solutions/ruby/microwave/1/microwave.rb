=begin
Write your code for the 'Microwave' exercise in this file. Make the tests in
`microwave_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/microwave` directory.
=end

class Microwave
  def initialize(time_in_seconds)
    @time_in_seconds= time_in_seconds
  end

  def timer
    minutes, seconds = @time_in_seconds.divmod(100)
    extra_minute, seconds = seconds.divmod(60)
    minutes += extra_minute
    
    "#{minutes.to_s.rjust(2, '0')}:#{seconds.to_s.rjust(2, '0')}"
  end
end