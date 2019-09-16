require 'hlp'

prime = memoize(function (n)
  if n == 1 then
    return 2
  end

  if n == 2 then
    return 3
  end

  local nxt = prime(n-1)

  repeat
    nxt = nxt + 2
    local good = function (x) return nxt % x > 0 end
  until all(good, range(3, math.sqrt(nxt), 2))

  return nxt
end)

dbg(prime(10001))
