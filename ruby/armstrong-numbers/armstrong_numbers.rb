class ArmstrongNumbers

  def self.include?(integer)
    numbers = integer.digits
    sum = numbers.sum do |number|
      number ** numbers.length
    end
    sum == integer ? true : false
  end
end
