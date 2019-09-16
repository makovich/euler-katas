require 'fun' ()

dbg = function (...)
  if DEBUG==0 then
    return
  end
  if type(select(1,...)) == 'string' then
    print(string.format(...))
  else
    print(require('inspect').inspect(..., { newline =' ', indent = '' }))
  end
end

fmt = function (str, ...)
  return string.format(str, ...)
end

memoize = function (f)
  local res = {}
  return function (v)
    if res[v] then
      return res[v]
    else
      res[v] = f(v)
      return res[v]
    end
  end
end

bind = function (f, v)
  return function (x)
    return f(v, x)
  end
end

compose = function (f, g)
  return function (x)
    return g(f(x))
  end
end

nat = function (start)
  return drop(start and start-1 or 0, tabulate(bind(op.add, 1)))
end

