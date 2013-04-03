class Object
  def should matcher
    self.send matcher
  end

  def method_missing sym, *args, &block
    if sym.to_s =~ /^should_(.+)$/
      self.send($1, *args)
    end
  end

  def eq expected
    raise MedievalException.new expected, self, "equal" unless self == expected
  end

  def gt expected
    raise MedievalException.new expected, self, "greater" unless self > expected
  end
end

class MedievalException < Exception
  attr_reader :expected, :received, :comparation

  def initialize expected, received, comparation
    @expected = expected
    @received = received
    @comparation = comparation
  end

  def message
    "Expected: #{expected.inspect} to be #{comparation} than #{received.inspect}. \nReceived: #{received.inspect}"
  end
end
