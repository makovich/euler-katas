require 'hlp'

gcd = function (a, b)
  if a < b then
    return gcd(b, a)
  end

  return (a % b == 0) and b or gcd(b, a % b)
end

lcm = function (a, b)
  return a * b // gcd(a, b)
end

dbg(reduce(lcm, 1, range(2, 20)))
