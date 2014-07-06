class Details
  def initialize(snail, samples)
    @snail = snail
    @min   = samples.min
    @max   = samples.max
    @sum   = samples.reduce(:+)
    @avg   = @sum / samples.size
  end

  def format_for_hirb
    { name: @snail, min: @min, max: @max, sum: @sum, avg: @avg }
  end
end