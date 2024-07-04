class SimpleCalculator
  def self.add(input)
    return 0 if input.blank?

    if input.start_with?("//")
      delimiter, input = input[2..-1].split("\n", 2)
      numbers = input.split(delimiter)
    else
      numbers = input.split(/,|\n/)
    end

    numbers = numbers.map(&:to_i)
    negatives = numbers.select { |n| n < 0 }
    raise "negative numbers not allowed: #{negatives.join(',')}" if negatives.present?

    numbers.inject(0, :+)

  end

end
