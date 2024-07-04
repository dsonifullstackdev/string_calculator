class SimpleCalculator
  def self.add(input)
    return 0 if input.blank?

    numbers = input.split(",").map(&:to_i)
    numbers.inject(0, :+)

  end
end
