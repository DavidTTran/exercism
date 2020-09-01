class Grains

  def self.square(number)
    raise ArgumentError if number > 64 || number <= 0
    2 ** (number - 1)
  end

  def self.total
    (1..64).to_a.sum do |number|
      2 ** (number - 1)
    end
  end
end
