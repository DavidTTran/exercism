class ArmstrongNumbers

  def self.include?(integer)
    numbers = integer_to_digits(integer)
    sum_after_exponent(numbers) == integer ? true : false
  end

  private

  def self.integer_to_digits(integer)
    integer.digits
  end

  def self.sum_after_exponent(integers)
    integers.sum do |number|
      number ** integers.length
    end
  end
end
