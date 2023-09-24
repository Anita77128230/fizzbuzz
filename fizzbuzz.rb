# frozen_string_literal: true

# idiomatic code
def fizzbuzz(size, &block)
  (1..size).map do |number|
    result = ''
    result += 'Fizz' if (number % 3).zero?
    result += 'Buzz' if (number % 5).zero?
    decorated_item = result.empty? ? number.to_s : result
    block_given? ? block.call(decorated_item) : decorated_item
  end
end

# non-idiomatic code
# def fizzbuzz2(size)
#   (1..size).map do |number|
#       item = if (number % 3).zero? && (number % 5).zero?
#                'FizzBuzz'
#              elsif (number % 3).zero?
#                'Fizz'
#              elsif (number % 5).zero?
#                'Buzz'
#              else
#             number.to_s
#              end
#         if block_given?
#             yield(item)
#         else
#           item
#         end
#     end
# end
