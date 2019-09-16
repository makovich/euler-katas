require 'hlp'

collatz = function (n)
  if n % 2 == 0 then
    return n // 2
  else
    return 3 * n + 1
  end
end

len = memoize(function (n)
  if n == 1 then
    return 1
  else
    return 1 + len(collatz(n))
  end
end)

dbg(max_by(function (a,b) return len(a) > len(b) and a or b end, range(1000000)))
