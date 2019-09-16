require 'hlp'

-- encodes tuple to string like "12x1"
p = function (x, y)
  return fmt("%dx%d", x, y)
end

-- decodes "12x1" onto pair of numbers
g = function (p)
  local x, y = string.match(p, "(%d+)x(%d+)")
  return tonumber(x), tonumber(y)
end

path = memoize(function (v)
  local x, y = g(v)
  -- dbg(fmt("x=%d y=%d", x, y))

  return (x==0 and y==0) and 0
      or (x==1 and y==0) and 1
      or (x==0 and y==1) and 1
      or (x==1 and y==1) and 2
      or (x>=1 and y==0) and path(p(x-1,y))
      or (x==0 and y>=1) and path(p(x,y-1))
      or (x>=1 and y>=1) and path(p(x-1,y)) + path(p(x,y-1))
      or 0

end)

dbg(path(p(20,20)))
