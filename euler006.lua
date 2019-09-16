require 'hlp'

square_of_sum = function (n)
  local sum = n * (n + 1) // 2
  return sum * sum
end

sum_of_square = function (n)
  return n * (n + 1) * (2 * n + 1) // 6
end

diff = function (n)
  return square_of_sum(n) - sum_of_square(n)
end

dbg(diff(100))
