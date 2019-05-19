class Bike

  attr_accessor :broken , :report_broken

  def initialize
    @broken = broken
  end
  
  def working?
      true
  end

  def report_broken
    @broken = true
    self
  end

  def broken?
    @broken
  end
end