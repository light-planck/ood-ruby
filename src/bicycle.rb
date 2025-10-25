# Template Mehod Pattern

class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(args={})
    @size = args[:size]
    @chain = args[:chain] || default_chain
    @tire_size = args[:tire_size] || default_tire_size
    post_initialize(args)
  end

  def default_chain
    '10-speed'
  end

  def default_tire_size
    raise NotImplementedError
  end

  def post_initialize(args)
    nil
  end

  def spears
    {
      tire_size:,
      chain:
    }.merge(local_spares)
  end

  def local_spares
    {}
  end
end
