class Snail
  attr_reader :name, :lambda

  def initialize(name, lambda)
    @name   = name
    @lambda = lambda
  end

  def to_s
    @name
  end

  def crawl
    @lambda.call
  end
end