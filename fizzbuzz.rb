# frozen_string_literal: true

def fizzbuzz(size, &block)
  (1..size).map do |number|
    result = ''
    result += 'Fizz' if (number % 3).zero?
    result += 'Buzz' if (number % 5).zero?
    decorated_item = result.empty? ? number.to_s : result
    block_given? ? block.call(decorated_item) : decorated_item
  end
end
