require 'hlp'

fib = memoize(function (n)
  return n < 2 and n or fib(n-1) + fib(n-2)
end)

isEven = function (v)
  return v % 2 == 0
end

dbg(nat(2):map(fib):take(bind(op.gt, 4000000)):filter(isEven):sum())
